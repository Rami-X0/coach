import 'package:json_annotation/json_annotation.dart';

part 'all_trainer_account_response.g.dart';

@JsonSerializable()
class AllTRainerAccountResponse {
  final List<Value> value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
  final List<String> errors;

  AllTRainerAccountResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    required this.errors,
  });

  factory AllTRainerAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AllTRainerAccountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllTRainerAccountResponseToJson(this);
}

@JsonSerializable()
class Value {
  final String username;
  final String about;
  final String image;
  final String email;
  final Id id;

  Value({
    required this.username,
    required this.about,
    required this.image,
    required this.email,
    required this.id,
  });

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}

@JsonSerializable()
class Id {
  final String value;

  Id({
    required this.value,
  });

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}
