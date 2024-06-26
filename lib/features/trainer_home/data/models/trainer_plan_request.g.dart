// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrainerPlanRequest _$TrainerPlanRequestFromJson(Map<String, dynamic> json) =>
    TrainerPlanRequest(
      name: json['name'] as String,
      duration: (json['duration'] as num).toInt(),
      focus: json['focus'] as String,
      sessions: (json['sessions'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      trainerId: json['trainerId'] as String,
    );

Map<String, dynamic> _$TrainerPlanRequestToJson(TrainerPlanRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'duration': instance.duration,
      'focus': instance.focus,
      'sessions': instance.sessions,
      'price': instance.price,
      'trainerId': instance.trainerId,
    };
