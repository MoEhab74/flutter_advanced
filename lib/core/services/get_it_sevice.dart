import 'package:dio/dio.dart';
import 'package:flutter_advanced/core/api/api_service.dart';
import 'package:flutter_advanced/core/api/dio_factory.dart';
import 'package:flutter_advanced/features/auth/data/repos/login_repo.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  /// Dio & API Service for the whole application
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>())); // We can write getIt() directly here beacuase getIt have all the dependencies already
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
}
