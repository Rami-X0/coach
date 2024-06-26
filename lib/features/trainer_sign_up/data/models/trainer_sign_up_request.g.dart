// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainerSignUpRequest _$TrainerSignUpRequestFromJson(
        Map<String, dynamic> json) =>
    TrainerSignUpRequest(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      image: json['image'] as String,
      gender: json['gender'] as String,
      about: json['about'] as String,
    );

Map<String, dynamic> _$TrainerSignUpRequestToJson(
        TrainerSignUpRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'image': instance.image,
      'gender': instance.gender,
      'about': instance.about,
    };
