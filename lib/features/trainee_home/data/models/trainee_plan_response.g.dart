// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainee_plan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraineePlanResponse _$TraineePlanResponseFromJson(Map<String, dynamic> json) =>
    TraineePlanResponse(
      value: (json['value'] as List<dynamic>)
          .map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: (json['status'] as num).toInt(),
      isSuccess: json['isSuccess'] as bool,
      successMessage: json['successMessage'] as String,
      correlationId: json['correlationId'] as String,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TraineePlanResponseToJson(
        TraineePlanResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'status': instance.status,
      'isSuccess': instance.isSuccess,
      'successMessage': instance.successMessage,
      'correlationId': instance.correlationId,
      'errors': instance.errors,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value(
      name: json['name'] as String,
      duration: (json['duration'] as num).toInt(),
      focus: json['focus'] as String,
      sessions: (json['sessions'] as num).toInt(),
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{
      'name': instance.name,
      'duration': instance.duration,
      'focus': instance.focus,
      'sessions': instance.sessions,
      'price': instance.price,
    };
