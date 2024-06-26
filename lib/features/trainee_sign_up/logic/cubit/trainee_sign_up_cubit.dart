import 'dart:io';

import 'package:coach/features/trainee_sign_up/data/models/trainee_sign_up_request.dart';
import 'package:coach/features/trainee_sign_up/data/repo/trainee_sign_up_repo.dart';
import 'package:coach/features/trainee_sign_up/logic/cubit/trainee_sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class TraineeSignUpCubit extends Cubit<TraineeSignUpState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  XFile? image;
  String gender = "Male";
  final TraineeSignUpRepo _helperLoginRepo;

  TraineeSignUpCubit(this._helperLoginRepo)
      : super(const TraineeSignUpState.initial());

  Future<TraineeSignUpRequest> userSignUpData() async {
    return TraineeSignUpRequest(
      password: passwordController.text,
      email: emailController.text,
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      gender: gender.toString(),
      image: image!.path.toString(),
    );
  }

  void emitPetBackerLoginState() async {
    emit(const TraineeSignUpState.loading());
    final request = await userSignUpData();
    final response = await _helperLoginRepo.trainerSignUp(
        trainerSignUpRequest: request, image: File(image!.path));
    response.when(success: (data) async {
      emit(TraineeSignUpState.signUpSuccess(response: data));
    }, failure: (failure) {
      emit(TraineeSignUpState.signUpFailure(apiError: failure));
    });
  }
}
