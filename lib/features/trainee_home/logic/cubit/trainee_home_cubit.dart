import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/features/trainee_home/data/models/all_messages_request.dart';
import 'package:coach/features/trainee_home/data/models/create_message_request.dart';
import 'package:coach/features/trainee_home/data/repo/trainee_plan_repo.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TraineeHomeCubit extends Cubit<TraineeHomeState> {
  final GlobalKey<FormState> sendMessageFormKey = GlobalKey<FormState>();
  final TextEditingController sendMessageController = TextEditingController();
  String? trainerId;
  String? receiverId;
  final TraineeHomeRepo _traineeHomeRepo;

  TraineeHomeCubit(this._traineeHomeRepo)
      : super(const TraineeHomeState.initial());

  Future<void> emitTraineeAllPlans() async {
    emit(const TraineeHomeState.getAllPlanLoading());
    final response = await _traineeHomeRepo.traineeAllPlans(trainerId!);
    response.when(success: (data) async {
      emit(TraineeHomeState.getAllPlanSuccess(traineeGetAllPlans: data));
    }, failure: (failure) {
      emit(TraineeHomeState.getAllPlanFailure(apiError: failure));
    });
  }

  Future<void> emitAllTrainers() async {
    emit(const TraineeHomeState.getAllTrainersLoading());
    final response = await _traineeHomeRepo.getAllTrainers();
    response.when(success: (data) async {
      emit(TraineeHomeState.getAllTrainersSuccess(
          allTrainerAccountResponse: data));
    }, failure: (failure) {
      emit(TraineeHomeState.getAllTrainersFailure(apiError: failure));
    });
  }

  Future<void> emitTraineeSendMessage() async {
    emit(const TraineeHomeState.sendMessageLoading());
    final response =
        await _traineeHomeRepo.traineeSendMessage(CreateMessageRequest(
      sender: traineeUserId!,
      receiver: trainerId!,
      message: sendMessageController.text,
    ));
    response.when(success: (data) async {
      emitAllMessageTraineeAndTrainer();
      emit(const TraineeHomeState.sendMessageSuccess());
      sendMessageController.clear();
    }, failure: (failure) {
      emit(TraineeHomeState.sendMessageFailure(apiError: failure));
    });
  }

  Future<void> emitAllMessageTraineeAndTrainer() async {
    emit(const TraineeHomeState.allMessageTraineeAndTrainerLoading());
    final response =
        await _traineeHomeRepo.allMessageTraineeAndTrainer(AllMessagesRequest(
      sendId: traineeUserId,
      receiverId: trainerId!,
    ));
    response.when(success: (data) {
      emit(TraineeHomeState.allMessageTraineeAndTrainerSuccess(
          allMessageResponse: data));
    }, failure: (failure) {
      emit(TraineeHomeState.allMessageTraineeAndTrainerFailure(
          apiError: failure));
    });
  }

  Future<void> emitAllChatForTrainee() async {
    emit(const TraineeHomeState.allChatForTraineeLoading());
    final response = await _traineeHomeRepo
        .allChatForTrainee( traineeUserId);
    response.when(success: (data) {
      emit(TraineeHomeState.allChatForTraineeSuccess(
          allChatForTraineeResponse: data));
    }, failure: (failure) {
      emit(TraineeHomeState.allChatForTraineeFailure(apiError: failure));
    });
  }
}
