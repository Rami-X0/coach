// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_trainer_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTRainerAccountResponse _$AllTRainerAccountResponseFromJson(
        Map<String, dynamic> json) =>
    AllTRainerAccountResponse(
      value: (json['value'] as List<dynamic>)
          .map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: (json['status'] as num).toInt(),
      isSuccess: json['isSuccess'] as bool,
      successMessage: json['successMessage'] as String,
      correlationId: json['correlationId'] as String,
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AllTRainerAccountResponseToJson(
        AllTRainerAccountResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      username: json['username'] as String,
      about: json['about'] as String,
      image: json['image'] as String,
      email: json['email'] as String,
      id: Id.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'username': instance.username,
      'about': instance.about,
      'image': instance.image,
      'email': instance.email,
      'id': instance.id,
    };

Id _$IdFromJson(Map<String, dynamic> json) => Id(
      value: json['value'] as String,
    );

Map<String, dynamic> _$IdToJson(Id instance) => <String, dynamic>{
      'value': instance.value,
    };
