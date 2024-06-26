import 'dart:io';

import 'package:coach/features/trainer_sign_up/data/models/trainer_sign_up_request.dart';
import 'package:coach/features/trainer_sign_up/data/repo/trainer_login_repo.dart';
import 'package:coach/features/trainer_sign_up/logic/cubit/trainer_sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class TrainerSignUpCubit extends Cubit<TrainerSignUpState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  XFile? image;
  String gender="Male";
  final TrainerSignUpRepo _helperLoginRepo;

  TrainerSignUpCubit(this._helperLoginRepo)
      : super(const TrainerSignUpState.initial());

  Future<TrainerSignUpRequest> userSignUpData() async {
    return TrainerSignUpRequest(
      password: passwordController.text,
      about: aboutController.text,
      email: emailController.text,
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      gender: gender.toString(),
      image: image!.path.toString(),
    );
  }

  void emitPetBackerLoginState() async {
    emit(const TrainerSignUpState.loading());
    final request = await userSignUpData();
    final response = await _helperLoginRepo.trainerSignUp(
        trainerSignUpRequest: request, image: File(image!.path));
    response.when(success: (data) async {
      emit(TrainerSignUpState.signUpSuccess(response: data));
    }, failure: (failure) {
      emit(TrainerSignUpState.signUpFailure(apiError: failure));
    });
  }
}
