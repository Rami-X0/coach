import 'package:coach/features/trainee_sign_up/data/models/trainee_sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "trainee_sign_up_state.freezed.dart";

@freezed
class TraineeSignUpState with _$TraineeSignUpState {
  const factory TraineeSignUpState.initial() = _Initial;

  const factory TraineeSignUpState.loading() = Loading;

  const factory TraineeSignUpState.signUpSuccess(
      {required TraineeSignUpResponse response}) = LoginSuccess;

  const factory TraineeSignUpState.signUpFailure(
      {required DioException apiError}) = LoginFailure;

  const factory TraineeSignUpState.cacheUserId({required int usrId}) =
      CacheUserId;
}
