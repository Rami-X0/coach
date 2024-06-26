import 'package:json_annotation/json_annotation.dart';

part 'trainer_sign_up_request.g.dart';

@JsonSerializable()
class TrainerSignUpRequest {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String image;
  final String gender;
  final String about;

  TrainerSignUpRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.image,
    required this.gender,
    required this.about,
  });

  factory TrainerSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$TrainerSignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerSignUpRequestToJson(this);
}
