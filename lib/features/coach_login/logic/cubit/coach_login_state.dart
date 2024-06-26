import 'package:coach/features/coach_login/data/models/coach_login_response.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "coach_login_state.freezed.dart";

@freezed
class CoachLoginState with _$CoachLoginState {
  const factory CoachLoginState.initial() = _Initial;

  const factory CoachLoginState.loading() = Loading;

  const factory CoachLoginState.loginSuccess(
      {required CoachLoginResponse response}) = LoginSuccess;

  const factory CoachLoginState.loginFailure(
      {required DioException apiError}) = LoginFailure;

  const factory CoachLoginState.cacheUserId({required int usrId}) =
      CacheUserId;
}
