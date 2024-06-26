import 'package:json_annotation/json_annotation.dart';

part 'coach_login_request.g.dart';

@JsonSerializable()
class CoachLoginRequest {
  final String email;
  final String password;

  CoachLoginRequest({
    required this.email,
    required this.password,
  });

  factory CoachLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$CoachLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CoachLoginRequestToJson(this);
}
