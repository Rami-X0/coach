import 'package:json_annotation/json_annotation.dart';

part 'all_messages_request.g.dart';

@JsonSerializable()
class AllMessagesRequest {
  final String sendId;
  final String receiverId;

  AllMessagesRequest({
    required this.sendId,
    required this.receiverId,
  });
  factory AllMessagesRequest.fromJson(Map<String, dynamic> json) =>
      _$AllMessagesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AllMessagesRequestToJson(this);
}
