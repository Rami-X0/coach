
import 'package:coach/core/networking/api_result.dart';
import 'package:coach/core/networking/api_services.dart';
import 'package:coach/features/coach_login/data/models/coach_login_request.dart';
import 'package:coach/features/coach_login/data/models/coach_login_response.dart';
import 'package:dio/dio.dart';

class CoachLoginRepo {
  final ApiServices _apiServices;

  CoachLoginRepo(this._apiServices);

  Future<ApiResult<CoachLoginResponse>> traineeAndTrainerLogin(CoachLoginRequest coachLoginRequest) async {

    try {
      final response = await _apiServices.traineeAndTrainerLogin(coachLoginRequest);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }


}
