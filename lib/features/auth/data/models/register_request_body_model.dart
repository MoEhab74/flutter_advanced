import 'package:json_annotation/json_annotation.dart';

part 'register_request_body_model.g.dart';

@JsonSerializable()
class RegisterRequestBodyModel {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String address;

  RegisterRequestBodyModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone, required this.address,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyModelToJson(this);
}
