import 'dart:io';

import 'package:coach/core/networking/api_result.dart';
import 'package:coach/core/networking/api_services.dart';
import 'package:coach/features/trainer_sign_up/data/models/trainer_sign_up_request.dart';
import 'package:coach/features/trainer_sign_up/data/models/trainer_sign_up_response.dart';
import 'package:dio/dio.dart';

class TrainerSignUpRepo {
  final ApiServices _apiServices;

  TrainerSignUpRepo(this._apiServices);

  Future<ApiResult<TrainerSignUpResponse>> trainerSignUp({
    required TrainerSignUpRequest trainerSignUpRequest,
    required File image,
  }) async {
    final formData = await _createFormData(trainerSignUpRequest, image);

    try {
      final response = await _apiServices.trainerSignUp(formData);
      return ApiResult.success(response);
    } on DioException catch (failure) {
      return ApiResult.failure(failure);
    }
  }

  Future<FormData> _createFormData(TrainerSignUpRequest trainerSignUpRequest, File image) async {
    return FormData.fromMap({
      "firstName": trainerSignUpRequest.firstName,
      "lastName": trainerSignUpRequest.lastName,
      "email": trainerSignUpRequest.email,
      "password": trainerSignUpRequest.password,
      "gender": trainerSignUpRequest.gender,
      "about": trainerSignUpRequest.about,
      "image": await MultipartFile.fromFile(image.path),
    });
  }
}
