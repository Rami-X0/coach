import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/features/trainer_home/data/models/all_messages_trainer_request.dart';
import 'package:coach/features/trainer_home/data/models/create_message_trainer_request.dart';
import 'package:coach/features/trainer_home/data/models/trainer_plan_request.dart';
import 'package:coach/features/trainer_home/data/repo/trainer_plan_repo.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainerHomeCubit extends Cubit<TrainerHomeState> {
  final GlobalKey<FormState> addPlanFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> sendMessageFormKey = GlobalKey<FormState>();
  final TextEditingController namePlanController = TextEditingController();
  final TextEditingController sendMessageController = TextEditingController();
  final TextEditingController durationPlanController = TextEditingController();
  final TextEditingController focusPlanController = TextEditingController();
  final TextEditingController sessionPlanController = TextEditingController();
  final TextEditingController pricePlanController = TextEditingController();

  final TrainerHomeRepo _trainerHomeRepo;
  String? traineeId;

  TrainerHomeCubit(this._trainerHomeRepo)
      : super(const TrainerHomeState.initial());

  Future<void> emitTrainerHomeState() async {
    emit(const TrainerHomeState.addPlanLoading());
    final duration = int.parse(durationPlanController.text);
    final price = int.parse(pricePlanController.text);
    final sessions = int.parse(sessionPlanController.text);
    final response = await _trainerHomeRepo.trainerAddPlan(
      TrainerPlanRequest(
        name: namePlanController.text,
        duration: duration,
        focus: focusPlanController.text,
        price: price,
        sessions: sessions,
        trainerId: trainerUserId,
      ),
    );

    response.when(success: (data) async {
      emit(const TrainerHomeState.addPlanSuccess());
    }, failure: (failure) {
      emit(TrainerHomeState.addPlanFailure(apiError: failure));
    });
  }

  Future<void> emitTrainerMyAllPlans() async {
    emit(const TrainerHomeState.getAllPlanLoading());
    final response =
        await _trainerHomeRepo.trainerMyAllPlans(trainerUserId.toString());
    response.when(success: (data) async {
      emit(TrainerHomeState.getAllPlanSuccess(trainerGetAllPlans: data));
    }, failure: (failure) {
      emit(TrainerHomeState.getAllPlanFailure(apiError: failure));
    });
  }

  Future<void> emitAllChatForTrainer() async {
    emit(const TrainerHomeState.getAllMessageForTrainerLoading());
    final response = await _trainerHomeRepo.allChatForTrainer(trainerUserId);
    response.when(success: (data) async {
      emit(TrainerHomeState.getAllMessageForTrainerSuccess(
          allChatTrainerResponse: data));
    }, failure: (failure) {
      emit(TrainerHomeState.getAllMessageForTrainerFailure(apiError: failure));
    });
  }

  Future<void> emitAllMessageTrainerAndTrainee() async {
    emit(const TrainerHomeState.getAllMessageForTrainerBetweenTraineeLoading());
    final response = await _trainerHomeRepo
        .allMessageTrainerAndTrainee(AllMessagesTrainerRequest(
      sendId: trainerUserId,
      receiverId: traineeId!,
    ));
    response.when(success: (data) {
      emit(TrainerHomeState.getAllMessageForTrainerBetweenTraineeSuccess(
          allMessagesTrainerResponse: data));
    }, failure: (failure) {
      emit(TrainerHomeState.getAllMessageForTrainerBetweenTraineeFailure(
          apiError: failure));
    });
  }

  Future<void> emitTrainerSendMessage() async {
    emit(const TrainerHomeState.sendMessageLoading());
    final response =
        await _trainerHomeRepo.trainerSendMessage(CreateMessageTrainerRequest(
      sender: trainerUserId!,
      receiver: traineeId!,
      message: sendMessageController.text,
    ));
    response.when(success: (data) async {
      emitAllMessageTrainerAndTrainee();
      emit(const TrainerHomeState.sendMessageSuccess());
      sendMessageController.clear();
    }, failure: (failure) {
      emit(TrainerHomeState.sendMessageFailure(apiError: failure));
    });
  }
}
