import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/api/api_result.dart';
import 'package:flutter_advanced/features/auth/data/models/login_request_body_model.dart';
import 'package:flutter_advanced/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> emitLoginState() async {
    emit(const LoginState.loading());
    final result = await _loginRepo.login(
      LoginRequestBodyModel(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );
    result.when(
      success: (loginResponseModel) {
        emit(LoginState.loginSuccess(loginResponseModel));
      },
      failure: (error) {
        emit(
          LoginState.loginError(
            error: error.apiErrorModel.message ?? "Something went wrong",
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
