import 'package:json_annotation/json_annotation.dart';

part 'trainer_plan_request.g.dart';

@JsonSerializable()
class TrainerPlanRequest {
  final String name;
  final int duration;
  final String focus;
  final int sessions;
  final int price;
  final String trainerId;

  TrainerPlanRequest({
    required this.name,
    required this.duration,
    required this.focus,
    required this.sessions,
    required this.price,
    required this.trainerId,
  });

  factory TrainerPlanRequest.fromJson(Map<String, dynamic> json) =>
      _$TrainerPlanRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerPlanRequestToJson(this);
}

