// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainee_sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraineeSignUpResponse _$TraineeSignUpResponseFromJson(
        Map<String, dynamic> json) =>
    TraineeSignUpResponse(
      value: json['value'] == null
          ? null
          : Value.fromJson(json['value'] as Map<String, dynamic>),
      status: (json['status'] as num).toInt(),
      isSuccess: json['isSuccess'] as bool,
      successMessage: json['successMessage'] as String,
      correlationId: json['correlationId'] as String,
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TraineeSignUpResponseToJson(
        TraineeSignUpResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      userId: json['userId'] as String,
      role: json['role'] as String,
      username: json['username'] as String,
      jwtToken: json['jwtToken'] as String,
      refreshToken: json['refreshToken'] as String,
      error: json['error'] as String,
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'userId': instance.userId,
      'role': instance.role,
      'username': instance.username,
      'jwtToken': instance.jwtToken,
      'refreshToken': instance.refreshToken,
      'error': instance.error,
    };
