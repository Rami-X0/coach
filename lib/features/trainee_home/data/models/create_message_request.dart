import 'package:json_annotation/json_annotation.dart';

part 'create_message_request.g.dart';

@JsonSerializable()
class CreateMessageRequest {
  final String sender;
  final String receiver;
  final String message;

  CreateMessageRequest({
    required this.sender,
    required this.receiver,
    required this.message,
  });
  factory CreateMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateMessageRequestToJson(this);
}
