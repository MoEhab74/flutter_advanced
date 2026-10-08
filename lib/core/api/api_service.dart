import 'package:flutter_advanced/core/api/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_advanced/features/auth/data/models/login_request_body_model.dart';
import 'package:flutter_advanced/features/auth/data/models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(
    @Body() LoginRequestBodyModel loginRequestBodyModel,
  );
}
