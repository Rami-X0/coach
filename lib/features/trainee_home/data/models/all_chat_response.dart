import 'package:json_annotation/json_annotation.dart';

part 'all_chat_response.g.dart';

@JsonSerializable()
class AllChatResponse {
  final List<Value> value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
 final List<String> errors;

  AllChatResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    required this.errors,
  });
  factory AllChatResponse.fromJson(Map<String, dynamic> json) =>
      _$AllChatResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllChatResponseToJson(this);
}

@JsonSerializable()
class Value {
  final String firstName;
  final String secondName;
  final String image;
  final String gender;
  final Id id;

  Value({
    required this.firstName,
    required this.secondName,
    required this.image,
    required this.gender,
    required this.id,
  });

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}

@JsonSerializable()
class Id {
  final String value;

  Id({required this.value});

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}
