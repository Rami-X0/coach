import 'package:json_annotation/json_annotation.dart';

part 'trainee_sign_up_request.g.dart';

@JsonSerializable()
class TraineeSignUpRequest {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String image;
  final String gender;

  TraineeSignUpRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.image,
    required this.gender,
  });

  factory TraineeSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$TraineeSignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TraineeSignUpRequestToJson(this);
}
