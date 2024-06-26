import 'package:json_annotation/json_annotation.dart';

part 'all_messages_response.g.dart';

@JsonSerializable()
class AllMessageResponse {
  final List<Message> value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
  final List<String> errors;

  AllMessageResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    required this.errors,
  });

  factory AllMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$AllMessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllMessageResponseToJson(this);
}

@JsonSerializable()
class Message {
  final SenderId senderId;
  final ReceiverId receiverId;
  final String message;
  final String timestamp;
  final MessageId id;

  Message({
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.timestamp,
    required this.id,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}

@JsonSerializable()
class SenderId {
  final String value;

  SenderId({required this.value});

  factory SenderId.fromJson(Map<String, dynamic> json) =>
      _$SenderIdFromJson(json);

  Map<String, dynamic> toJson() => _$SenderIdToJson(this);
}

@JsonSerializable()
class ReceiverId {
  final String value;

  ReceiverId({required this.value});

  factory ReceiverId.fromJson(Map<String, dynamic> json) =>
      _$ReceiverIdFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiverIdToJson(this);
}

@JsonSerializable()
class MessageId {
  final String value;

  MessageId({required this.value});

  factory MessageId.fromJson(Map<String, dynamic> json) =>
      _$MessageIdFromJson(json);

  Map<String, dynamic> toJson() => _$MessageIdToJson(this);
}