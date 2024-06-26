import 'package:json_annotation/json_annotation.dart';

part 'coach_login_response.g.dart';

@JsonSerializable()
class CoachLoginResponse {
  final Value? value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
  final List<String> errors;

  CoachLoginResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    required this.errors,
  });

  factory CoachLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$CoachLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CoachLoginResponseToJson(this);
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
