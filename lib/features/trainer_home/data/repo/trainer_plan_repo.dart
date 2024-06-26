import 'package:coach/core/networking/api_result.dart';
import 'package:coach/core/networking/api_services.dart';
import 'package:coach/features/trainer_home/data/models/all_chat_trainer_response.dart';
import 'package:coach/features/trainer_home/data/models/all_messages_trainer_request.dart';
import 'package:coach/features/trainer_home/data/models/all_messages_trainer_response.dart';
import 'package:coach/features/trainer_home/data/models/create_message_trainer_request.dart';
import 'package:coach/features/trainer_home/data/models/trainer_plan_request.dart';
import 'package:coach/features/trainer_home/data/models/trainer_plan_response.dart';
import 'package:dio/dio.dart';

class TrainerHomeRepo {
  final ApiServices _apiServices;

  TrainerHomeRepo(this._apiServices);

  Future<ApiResult> trainerAddPlan(
      TrainerPlanRequest trainerPlanRequest) async {
    try {
      final response = await _apiServices.trainerAddPlan(trainerPlanRequest);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<ApiResult<TrainerPlanResponse>> trainerMyAllPlans(
      String trainerId) async {
    try {
      final response = await _apiServices.trainerMyAllPlans(trainerId);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<ApiResult<AllChatTrainerResponse>> allChatForTrainer(
      String traineeId) async {
    try {
      final response = await _apiServices.allChatForTrainer(traineeId);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<ApiResult<AllMessageTrainerResponse>> allMessageTrainerAndTrainee(
      AllMessagesTrainerRequest allMessagesTrainerRequest) async {
    try {
      final response = await _apiServices
          .allMessageTrainerAndTrainee(allMessagesTrainerRequest);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }
  Future<ApiResult> trainerSendMessage(CreateMessageTrainerRequest sendMessage) async {
    try {
      final response = await _apiServices.sendTrainerMessage(sendMessage);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }
}
