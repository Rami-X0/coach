// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoachLoginRequest _$CoachLoginRequestFromJson(Map<String, dynamic> json) =>
    CoachLoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$CoachLoginRequestToJson(CoachLoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
