import 'package:coach/features/trainer_sign_up/data/models/trainer_sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "trainer_sign_up_state.freezed.dart";

@freezed
class TrainerSignUpState with _$TrainerSignUpState {
  const factory TrainerSignUpState.initial() = _Initial;

  const factory TrainerSignUpState.loading() = Loading;

  const factory TrainerSignUpState.signUpSuccess(
      {required TrainerSignUpResponse response}) = LoginSuccess;

  const factory TrainerSignUpState.signUpFailure(
      {required DioException apiError}) = LoginFailure;

  const factory TrainerSignUpState.cacheUserId({required int usrId}) =
      CacheUserId;
}
