import 'package:json_annotation/json_annotation.dart';

part 'trainer_sign_up_response.g.dart';

@JsonSerializable()
class TrainerSignUpResponse {
  final Value? value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
  final List<String> errors;

  TrainerSignUpResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    required this.errors,
  });

  factory TrainerSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$TrainerSignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerSignUpResponseToJson(this);
}

@JsonSerializable()
class Value {
  final String userId;
  final String role;
  final String username;
  final String jwtToken;
  final String refreshToken;
  final String error;

  Value({
    required this.userId,
    required this.role,
    required this.username,
    required this.jwtToken,
    required this.refreshToken,
    required this.error,
  });

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
