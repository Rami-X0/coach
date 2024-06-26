import 'package:json_annotation/json_annotation.dart';

part 'all_messages_trainer_request.g.dart';

@JsonSerializable()
class AllMessagesTrainerRequest {
  final String sendId;
  final String receiverId;

  AllMessagesTrainerRequest({
    required this.sendId,
    required this.receiverId,
  });
  factory AllMessagesTrainerRequest.fromJson(Map<String, dynamic> json) =>
      _$AllMessagesTrainerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AllMessagesTrainerRequestToJson(this);
}
