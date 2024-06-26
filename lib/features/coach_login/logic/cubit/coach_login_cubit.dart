import 'package:coach/core/caching/app_shared_pref.dart';
import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/features/coach_login/data/models/coach_login_request.dart';
import 'package:coach/features/coach_login/data/models/coach_login_response.dart';
import 'package:coach/features/coach_login/data/repo/coach_login_repo.dart';
import 'package:coach/features/coach_login/logic/cubit/coach_login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoachLoginCubit extends Cubit<CoachLoginState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final CoachLoginRepo _helperLoginRepo;

  CoachLoginCubit(this._helperLoginRepo)
      : super(const CoachLoginState.initial());

  Future<CoachLoginRequest> userSignUpData() async {
    return CoachLoginRequest(
      password: passwordController.text,
      email: emailController.text,
    );
  }

  void emitCoachLoginState() async {
    emit(const CoachLoginState.loading());
    final response = await _helperLoginRepo.traineeAndTrainerLogin(
      CoachLoginRequest(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (data) async {
      emit(CoachLoginState.loginSuccess(response: data));
      if (data.value!.role == 'Trainer') {
        await cachingTrainerId(data);
        await cachingTrainerToken(data);
      } else if (data.value!.role == 'Trainee') {
        await cachingTraineeId(data);
        await cachingTraineeToken(data);
      }
    }, failure: (failure) {
      emit(CoachLoginState.loginFailure(apiError: failure));
    });
  }

  Future<void> cachingTrainerId(CoachLoginResponse data) async {
    AppSharedPref.sharedPrefSet(
        key: AppSharedPrefKey.trainerUserId, value: data.value!.userId);
    trainerUserId =
        await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.trainerUserId);
  }

  Future<void> cachingTraineeId(CoachLoginResponse data) async {
    AppSharedPref.sharedPrefSet(
        key: AppSharedPrefKey.traineeUserId, value: data.value!.userId);
    traineeUserId =
        await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.traineeUserId);
  }

  Future<void> cachingTraineeToken(CoachLoginResponse data) async {
    AppSharedPref.sharedPrefSet(
        key: AppSharedPrefKey.traineeToken, value: data.value!.jwtToken);
    traineeToken =
        await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.traineeToken);
  }

  Future<void> cachingTrainerToken(CoachLoginResponse data) async {
    AppSharedPref.sharedPrefSet(
        key: AppSharedPrefKey.trainerToken, value: data.value!.jwtToken);
    trainerToken =
        await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.trainerToken);
  }
}
