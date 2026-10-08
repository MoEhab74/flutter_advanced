// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBodyModel _$RegisterRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => RegisterRequestBodyModel(
  name: json['name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  phone: json['phone'] as String,
  address: json['address'] as String,
);

Map<String, dynamic> _$RegisterRequestBodyModelToJson(
  RegisterRequestBodyModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'password': instance.password,
  'phone': instance.phone,
  'address': instance.address,
};
