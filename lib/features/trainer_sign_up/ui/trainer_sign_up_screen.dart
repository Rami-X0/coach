import 'package:coach/core/theming/styles.dart';
import 'package:coach/core/widgets/scale_fade_align.dart';
import 'package:coach/features/trainer_sign_up/ui/widgets/bloc_listener_trainer_sign_up.dart';
import 'package:coach/features/trainer_sign_up/ui/widgets/choose_image_trainer_sign_up.dart';
import 'package:coach/features/trainer_sign_up/ui/widgets/trainer_sign_up_button.dart';
import 'package:coach/features/trainer_sign_up/ui/widgets/trainer_sign_up_have_account.dart';
import 'package:coach/features/trainer_sign_up/ui/widgets/trainer_sign_up_form.dart';
import 'package:coach/features/trainer_sign_up/ui/widgets/trainer_sign_up_gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TrainerSigUpScreen extends StatelessWidget {
  const TrainerSigUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppScaleFadeAlign(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    child: Text(
                      'Create Account',
                      style: TextStyles.font30MainColorBold,
                    ),
                  ),
                  AppScaleFadeAlign(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Gap(18.h),
                        const TrainerSignUpForm(),
                        Gap(25.h),
                        const ChooseImageTrainerSignUp(),
                        Gap(20.h),
                        const TrainerSignUpGender(),
                        Gap(25.h),
                        const TrainerSignUpButton(),
                        Gap(25.h),
                        const TrainerSignUpHaveAccount(),
                        const BlocListenerTrainerSignUp(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
