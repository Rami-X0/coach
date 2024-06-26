// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_messages_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllMessagesRequest _$AllMessagesRequestFromJson(Map<String, dynamic> json) =>
    AllMessagesRequest(
      sendId: json['sendId'] as String,
      receiverId: json['receiverId'] as String,
    );

Map<String, dynamic> _$AllMessagesRequestToJson(AllMessagesRequest instance) =>
    <String, dynamic>{
      'sendId': instance.sendId,
      'receiverId': instance.receiverId,
    };
