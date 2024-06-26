import 'dart:ui';

import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/core/widgets/app_blur_dialog.dart';
import 'package:coach/core/widgets/app_loading.dart';
import 'package:coach/features/coach_login/logic/cubit/coach_login_cubit.dart';
import 'package:coach/features/coach_login/logic/cubit/coach_login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocListenerCoachLogin extends StatelessWidget {
  const BlocListenerCoachLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CoachLoginCubit, CoachLoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return const AppBlurDialog(
                  child: AppLoading(),
                );
              },
            );
          },
          loginSuccess: (data) {
            if (data.isSuccess == false) {
              context.pop();
              setupErrorState(context, data.errors[0].toString());
            }else if(data.value!.role=='Trainee' ){
              context.pushNamedAndRemoveUntil(Routes.traineeNavigateBar);
            }else{
              context.pushNamedAndRemoveUntil(Routes.trainerNavigateBar);

            }
          },
          loginFailure: (failure) {
            context.pop();
            setupErrorState(context, 'Please try later');
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

void setupErrorState(BuildContext context, String failure) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          failure.toString(),
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Got it',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    ),
  );
}
