import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.registerSuccess(T data) = RegisterSuccess;
  const factory SignUpState.registerError({required String error}) = RegisterError;
}
