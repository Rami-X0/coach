// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_chat_trainer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllChatTrainerResponse _$AllChatTrainerResponseFromJson(
        Map<String, dynamic> json) =>
    AllChatTrainerResponse(
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

Map<String, dynamic> _$AllChatTrainerResponseToJson(
        AllChatTrainerResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      image: json['image'] as String,
      gender: json['gender'] as String,
      id: Id.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'image': instance.image,
      'gender': instance.gender,
      'id': instance.id,
    };

Id _$IdFromJson(Map<String, dynamic> json) => Id(
      value: json['value'] as String,
    );

Map<String, dynamic> _$IdToJson(Id instance) => <String, dynamic>{
      'value': instance.value,
    };
