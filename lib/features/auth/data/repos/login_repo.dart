import 'package:flutter_advanced/core/api/api_result.dart';
import 'package:flutter_advanced/core/api/api_service.dart';
import 'package:flutter_advanced/core/api/errors/api_error_handler.dart';
import 'package:flutter_advanced/features/auth/data/models/login_request_body_model.dart';
import 'package:flutter_advanced/features/auth/data/models/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  @override
  Future<ApiResult<LoginResponseModel>> login(
    LoginRequestBodyModel loginRequestBodyModel,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBodyModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
