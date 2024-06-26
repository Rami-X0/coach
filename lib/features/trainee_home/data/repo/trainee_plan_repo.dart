import 'package:coach/core/networking/api_result.dart';
import 'package:coach/core/networking/api_services.dart';
import 'package:coach/features/trainee_home/data/models/all_chat_response.dart';
import 'package:coach/features/trainee_home/data/models/all_messages_request.dart';
import 'package:coach/features/trainee_home/data/models/all_messages_response.dart';
import 'package:coach/features/trainee_home/data/models/all_trainer_account_response.dart';
import 'package:coach/features/trainee_home/data/models/create_message_request.dart';
import 'package:coach/features/trainee_home/data/models/trainee_plan_response.dart';
import 'package:dio/dio.dart';

class TraineeHomeRepo {
  final ApiServices _apiServices;

  TraineeHomeRepo(this._apiServices);

  Future<ApiResult<TraineePlanResponse>> traineeAllPlans(
      String trainerId) async {
    try {
      final response = await _apiServices.traineeAllPlans(trainerId);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<ApiResult<AllTRainerAccountResponse>> getAllTrainers() async {
    try {
      final response = await _apiServices.getAllTrainers();
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<ApiResult> traineeSendMessage(CreateMessageRequest sendMessage) async {
    try {
      final response = await _apiServices.sendMessage(sendMessage);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<ApiResult<AllMessageResponse>> allMessageTraineeAndTrainer(
      AllMessagesRequest allMessagesRequest) async {
    try {
      final response =
          await _apiServices.allMessageTraineeAndTrainer(allMessagesRequest);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<ApiResult<AllChatResponse>> allChatForTrainee(String id) async {
    final response = await _apiServices.allChatForTrainee(id);
    try {
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }
}
