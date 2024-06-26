import 'package:json_annotation/json_annotation.dart';

part 'trainer_plan_response.g.dart';

@JsonSerializable()
class TrainerPlanResponse {
  final List<Value> value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
  List<String>? errors;

  TrainerPlanResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    this.errors,
  });

  factory TrainerPlanResponse.fromJson(Map<String, dynamic> json) =>
      _$TrainerPlanResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerPlanResponseToJson(this);
}

@JsonSerializable()
class Value {
  final String name;
  final int duration;
  final String focus;
  final int sessions;
  final int price;

  Value({
    required this.name,
    required this.duration,
    required this.focus,
    required this.sessions,
    required this.price,
  });

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
