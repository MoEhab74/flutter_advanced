import 'package:flutter_advanced/core/api/api_result.dart';
import 'package:flutter_advanced/core/api/api_service.dart';
import 'package:flutter_advanced/core/api/errors/api_error_handler.dart';
import 'package:flutter_advanced/features/auth/data/models/login_request_body_model.dart';
import 'package:flutter_advanced/features/auth/data/models/auth_response_model.dart';
import 'package:flutter_advanced/features/auth/data/models/register_request_body_model.dart';

class AuthRepo {
  final ApiService _apiService;

  AuthRepo(this._apiService);

  Future<ApiResult<AuthResponseModel>> login(
    LoginRequestBodyModel loginRequestBodyModel,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AuthResponseModel>> register(
    RegisterRequestBodyModel registerRequestBodyModel,
  ) async {
    try {
      final response = await _apiService.register(registerRequestBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
