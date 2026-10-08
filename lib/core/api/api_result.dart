import 'package:flutter_advanced/core/api/errors/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

/// Freezed means take this class and generate all possible code that may be needed here
@freezed
abstract class ApiResult<T> with _$ApiResult {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}