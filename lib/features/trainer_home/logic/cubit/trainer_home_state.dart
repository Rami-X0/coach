import 'package:coach/features/trainer_home/data/models/all_chat_trainer_response.dart';
import 'package:coach/features/trainer_home/data/models/all_messages_trainer_response.dart';
import 'package:coach/features/trainer_home/data/models/trainer_plan_response.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "trainer_home_state.freezed.dart";

@freezed
class TrainerHomeState with _$TrainerHomeState {
  const factory TrainerHomeState.initial() = _Initial;

  const factory TrainerHomeState.addPlanLoading() = AddPlanLoading;

  const factory TrainerHomeState.addPlanSuccess() = AddPlanSuccess;

  const factory TrainerHomeState.addPlanFailure(
      {required DioException apiError}) = AddPlanFailure;

  const factory TrainerHomeState.getAllPlanLoading() = GetAllPlanLoading;

  const factory TrainerHomeState.getAllPlanSuccess(
      {required TrainerPlanResponse trainerGetAllPlans}) = GetAllPlanSuccess;

  const factory TrainerHomeState.getAllPlanFailure(
      {required DioException apiError}) = GetAllPlanFailure;

  const factory TrainerHomeState.getAllMessageForTrainerLoading() =
      GetAllMessageForTrainerLoading;

  const factory TrainerHomeState.getAllMessageForTrainerSuccess(
          {required AllChatTrainerResponse allChatTrainerResponse}) =
      GetAllMessageForTrainerSuccess;

  const factory TrainerHomeState.getAllMessageForTrainerFailure(
      {required DioException apiError}) = GetAllMessageForTrainerFailure;
const factory TrainerHomeState.sendMessageLoading() =
SendMessageLoading;

  const factory TrainerHomeState.sendMessageSuccess(
          ) =
  SendMessageSuccess;

  const factory TrainerHomeState.sendMessageFailure(
      {required DioException apiError}) = SendMessageFailure;
const factory TrainerHomeState.getAllMessageForTrainerBetweenTraineeLoading() =
GetAllMessageForTrainerBetweenTraineeLoading;

  const factory TrainerHomeState.getAllMessageForTrainerBetweenTraineeSuccess(
          {required AllMessageTrainerResponse allMessagesTrainerResponse}) =
  GetAllMessageForTrainerBetweenTraineeSuccess;

  const factory TrainerHomeState.getAllMessageForTrainerBetweenTraineeFailure(
      {required DioException apiError}) = GetAllMessageForTrainerBetweenTraineeFailure;
}
