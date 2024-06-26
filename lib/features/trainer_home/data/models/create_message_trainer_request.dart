import 'package:json_annotation/json_annotation.dart';

part 'create_message_trainer_request.g.dart';

@JsonSerializable()
class CreateMessageTrainerRequest {
  final String sender;
  final String receiver;
  final String message;

  CreateMessageTrainerRequest({
    required this.sender,
    required this.receiver,
    required this.message,
  });
  factory CreateMessageTrainerRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMessageTrainerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateMessageTrainerRequestToJson(this);
}
