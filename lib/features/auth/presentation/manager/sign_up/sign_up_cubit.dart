import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/api/api_result.dart';
import 'package:flutter_advanced/features/auth/data/models/register_request_body_model.dart';
import 'package:flutter_advanced/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_advanced/features/auth/presentation/manager/sign_up/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo _authRepo;
  SignUpCubit(this._authRepo) : super(const SignUpState.initial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> emitRegisterState() async {
    emit(const SignUpState.loading());
    final result = await _authRepo.register(
      RegisterRequestBodyModel(
        name: 'Mohamed',
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        phone: phoneController.text.trim(),
        address: 'cairo',
      ),
    );
    result.when(
      success: (registerResponseModel) {
        emit(SignUpState.registerSuccess(registerResponseModel));
      },
      failure: (error) {
        emit(
          SignUpState.registerError(
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
    phoneController.dispose();
    return super.close();
  }
}
