// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateMessageRequest _$CreateMessageRequestFromJson(
        Map<String, dynamic> json) =>
    CreateMessageRequest(
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$CreateMessageRequestToJson(
        CreateMessageRequest instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'receiver': instance.receiver,
      'message': instance.message,
    };
