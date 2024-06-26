import 'package:coach/features/trainee_home/data/models/all_chat_response.dart';
import 'package:coach/features/trainee_home/data/models/all_messages_response.dart';
import 'package:coach/features/trainee_home/data/models/all_trainer_account_response.dart';
import 'package:coach/features/trainee_home/data/models/trainee_plan_response.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "trainee_home_state.freezed.dart";

@freezed
class TraineeHomeState with _$TraineeHomeState {
  const factory TraineeHomeState.initial() = _Initial;

  const factory TraineeHomeState.getAllPlanLoading() = GetAllPlanLoading;

  const factory TraineeHomeState.getAllPlanSuccess(
      {required TraineePlanResponse traineeGetAllPlans}) = GetAllPlanSuccess;

  const factory TraineeHomeState.getAllPlanFailure(
      {required DioException apiError}) = GetAllPlanFailure;

  const factory TraineeHomeState.getAllTrainersLoading() =
      GetAllTrainersLoading;

  const factory TraineeHomeState.getAllTrainersSuccess(
          {required AllTRainerAccountResponse allTrainerAccountResponse}) =
      GetAllTrainersSuccess;

  const factory TraineeHomeState.getAllTrainersFailure(
      {required DioException apiError}) = GetAllTrainersFailure;

  const factory TraineeHomeState.sendMessageLoading() = SendMessageLoading;

  const factory TraineeHomeState.sendMessageSuccess() = SendMessageSuccess;

  const factory TraineeHomeState.sendMessageFailure(
      {required DioException apiError}) = SendMessageFailure;

  const factory TraineeHomeState.allMessageTraineeAndTrainerLoading() =
      AllMessageTraineeAndTrainerLoading;

  const factory TraineeHomeState.allMessageTraineeAndTrainerSuccess(
          {required AllMessageResponse allMessageResponse}) =
      AllMessageTraineeAndTrainerSuccess;

  const factory TraineeHomeState.allMessageTraineeAndTrainerFailure(
      {required DioException apiError}) = AllMessageTraineeAndTrainerFailure;
const factory TraineeHomeState.allChatForTraineeLoading() =
      AllChatForTraineeLoading;

  const factory TraineeHomeState.allChatForTraineeSuccess(
          {required AllChatResponse allChatForTraineeResponse}) =
      AllChatForTraineeSuccess;

  const factory TraineeHomeState.allChatForTraineeFailure(
      {required DioException apiError}) = AllChatForTraineeFailure;
}
