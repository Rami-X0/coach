// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_messages_trainer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllMessagesTrainerRequest _$AllMessagesTrainerRequestFromJson(
        Map<String, dynamic> json) =>
    AllMessagesTrainerRequest(
      sendId: json['sendId'] as String,
      receiverId: json['receiverId'] as String,
    );

Map<String, dynamic> _$AllMessagesTrainerRequestToJson(
        AllMessagesTrainerRequest instance) =>
    <String, dynamic>{
      'sendId': instance.sendId,
      'receiverId': instance.receiverId,
    };
