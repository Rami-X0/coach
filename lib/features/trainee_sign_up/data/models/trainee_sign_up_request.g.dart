// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainee_sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraineeSignUpRequest _$TraineeSignUpRequestFromJson(
        Map<String, dynamic> json) =>
    TraineeSignUpRequest(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      image: json['image'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$TraineeSignUpRequestToJson(
        TraineeSignUpRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'image': instance.image,
      'gender': instance.gender,
    };
