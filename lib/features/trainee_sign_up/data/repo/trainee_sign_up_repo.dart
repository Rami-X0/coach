import 'dart:io';

import 'package:coach/core/networking/api_result.dart';
import 'package:coach/core/networking/api_services.dart';
import 'package:coach/features/trainee_sign_up/data/models/trainee_sign_up_request.dart';
import 'package:coach/features/trainee_sign_up/data/models/trainee_sign_up_response.dart';
import 'package:dio/dio.dart';

class TraineeSignUpRepo {
  final ApiServices _apiServices;

  TraineeSignUpRepo(this._apiServices);

  Future<ApiResult<TraineeSignUpResponse>> trainerSignUp({
    required TraineeSignUpRequest trainerSignUpRequest,
    required File image,
  }) async {
    final formData = await _createFormData(trainerSignUpRequest, image);

    try {
      final response = await _apiServices.traineeSignUp(formData);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<FormData> _createFormData(
      TraineeSignUpRequest trainerSignUpRequest, File image) async {
    return FormData.fromMap({
      "firstName": trainerSignUpRequest.firstName,
      "lastName": trainerSignUpRequest.lastName,
      "email": trainerSignUpRequest.email,
      "password": trainerSignUpRequest.password,
      "gender": trainerSignUpRequest.gender,
      "image": await MultipartFile.fromFile(image.path),
    });
  }
}
