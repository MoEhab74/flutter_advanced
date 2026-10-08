import 'package:dio/dio.dart';
import 'package:flutter_advanced/core/api/api_service.dart';
import 'package:flutter_advanced/core/api/dio_factory.dart';
import 'package:flutter_advanced/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/login/login_cubit.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/sign_up/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  /// Dio & API Service for the whole application
  final Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// Login
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt<ApiService>())); // We can write getIt() directly here beacuase getIt have all the dependencies already
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<AuthRepo>()));

  /// Sign Up
  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(getIt<AuthRepo>()),
  );
}
