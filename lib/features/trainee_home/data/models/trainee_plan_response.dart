import 'package:json_annotation/json_annotation.dart';

part 'trainee_plan_response.g.dart';

@JsonSerializable()
class TraineePlanResponse {
  final List<Value> value;
  final int status;
  final bool isSuccess;
  final String successMessage;
  final String correlationId;
  List<String>? errors;

  TraineePlanResponse({
    required this.value,
    required this.status,
    required this.isSuccess,
    required this.successMessage,
    required this.correlationId,
    this.errors,
  });

  factory TraineePlanResponse.fromJson(Map<String, dynamic> json) =>
      _$TraineePlanResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TraineePlanResponseToJson(this);
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
