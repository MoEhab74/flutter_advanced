// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns<T> on SignUpState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial<T> value)?  initial,TResult Function( Loading<T> value)?  loading,TResult Function( RegisterSuccess<T> value)?  registerSuccess,TResult Function( RegisterError<T> value)?  registerError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case RegisterError() when registerError != null:
return registerError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial<T> value)  initial,required TResult Function( Loading<T> value)  loading,required TResult Function( RegisterSuccess<T> value)  registerSuccess,required TResult Function( RegisterError<T> value)  registerError,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case RegisterSuccess():
return registerSuccess(_that);case RegisterError():
return registerError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial<T> value)?  initial,TResult? Function( Loading<T> value)?  loading,TResult? Function( RegisterSuccess<T> value)?  registerSuccess,TResult? Function( RegisterError<T> value)?  registerError,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case RegisterError() when registerError != null:
return registerError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T data)?  registerSuccess,TResult Function( String error)?  registerError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.data);case RegisterError() when registerError != null:
return registerError(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T data)  registerSuccess,required TResult Function( String error)  registerError,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case RegisterSuccess():
return registerSuccess(_that.data);case RegisterError():
return registerError(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T data)?  registerSuccess,TResult? Function( String error)?  registerError,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.data);case RegisterError() when registerError != null:
return registerError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class Initial<T> implements SignUpState<T> {
  const Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SignUpState<$T>.initial()';
}


}




/// @nodoc


class Loading<T> implements SignUpState<T> {
  const Loading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SignUpState<$T>.loading()';
}


}




/// @nodoc


class RegisterSuccess<T> implements SignUpState<T> {
  const RegisterSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterSuccessCopyWith<T, RegisterSuccess<T>> get copyWith => _$RegisterSuccessCopyWithImpl<T, RegisterSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(data));
}

@override
String toString() {
    return 'SignUpState<$T>.registerSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $RegisterSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $RegisterSuccessCopyWith(RegisterSuccess<T> value, $Res Function(RegisterSuccess<T>) _then) = _$RegisterSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$RegisterSuccessCopyWithImpl<T,$Res>
    implements $RegisterSuccessCopyWith<T, $Res> {
  _$RegisterSuccessCopyWithImpl(this._self, this._then);

  final RegisterSuccess<T> _self;
  final $Res Function(RegisterSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(RegisterSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class RegisterError<T> implements SignUpState<T> {
  const RegisterError({required this.error});
  

 final  String error;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterErrorCopyWith<T, RegisterError<T>> get copyWith => _$RegisterErrorCopyWithImpl<T, RegisterError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,error);
}

@override
String toString() {
    return 'SignUpState<$T>.registerError(error: $error)';
}


}

/// @nodoc
abstract mixin class $RegisterErrorCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $RegisterErrorCopyWith(RegisterError<T> value, $Res Function(RegisterError<T>) _then) = _$RegisterErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$RegisterErrorCopyWithImpl<T,$Res>
    implements $RegisterErrorCopyWith<T, $Res> {
  _$RegisterErrorCopyWithImpl(this._self, this._then);

  final RegisterError<T> _self;
  final $Res Function(RegisterError<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(RegisterError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
