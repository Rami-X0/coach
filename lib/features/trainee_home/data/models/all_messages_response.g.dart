// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_messages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllMessageResponse _$AllMessageResponseFromJson(Map<String, dynamic> json) =>
    AllMessageResponse(
      value: (json['value'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: (json['status'] as num).toInt(),
      isSuccess: json['isSuccess'] as bool,
      successMessage: json['successMessage'] as String,
      correlationId: json['correlationId'] as String,
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AllMessageResponseToJson(AllMessageResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      senderId: SenderId.fromJson(json['senderId'] as Map<String, dynamic>),
      receiverId:
          ReceiverId.fromJson(json['receiverId'] as Map<String, dynamic>),
      message: json['message'] as String,
      timestamp: json['timestamp'] as String,
      id: MessageId.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'id': instance.id,
    };

SenderId _$SenderIdFromJson(Map<String, dynamic> json) => SenderId(
      value: json['value'] as String,
    );

Map<String, dynamic> _$SenderIdToJson(SenderId instance) => <String, dynamic>{
      'value': instance.value,
    };

ReceiverId _$ReceiverIdFromJson(Map<String, dynamic> json) => ReceiverId(
      value: json['value'] as String,
    );

Map<String, dynamic> _$ReceiverIdToJson(ReceiverId instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

MessageId _$MessageIdFromJson(Map<String, dynamic> json) => MessageId(
      value: json['value'] as String,
    );

Map<String, dynamic> _$MessageIdToJson(MessageId instance) => <String, dynamic>{
      'value': instance.value,
    };
