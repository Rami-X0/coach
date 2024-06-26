// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_message_trainer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMessageTrainerRequest _$CreateMessageTrainerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateMessageTrainerRequest(
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$CreateMessageTrainerRequestToJson(
        CreateMessageTrainerRequest instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'receiver': instance.receiver,
      'message': instance.message,
    };
