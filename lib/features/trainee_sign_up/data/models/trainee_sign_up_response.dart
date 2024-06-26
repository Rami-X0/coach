import 'package:json_annotation/json_annotation.dart';

part 'trainee_sign_up_response.g.dart';

@JsonSerializable()
class TraineeSignUpResponse {
  final Value? value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
  final List<String> errors;

  TraineeSignUpResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    required this.errors,
  });

  factory TraineeSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$TraineeSignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TraineeSignUpResponseToJson(this);
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
