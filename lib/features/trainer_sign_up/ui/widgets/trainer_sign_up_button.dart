import 'package:coach/core/theming/styles.dart';
import 'package:coach/core/widgets/app_snack_bar.dart';
import 'package:coach/core/widgets/app_text_button.dart';
import 'package:coach/features/trainer_sign_up/logic/cubit/trainer_sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrainerSignUpButton extends StatelessWidget {
  const TrainerSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      onPressed: () => actionTapButtonLogin(context),
      text: 'Sign Up',
      textStyle: TextStyles.font28WhiteSemiBold,
    );
  }

  void actionTapButtonLogin(BuildContext context) {
    final cubit = context.read<TrainerSignUpCubit>();
    if (cubit.formKey.currentState!.validate()) {
      if (cubit.image == null) {
        messageErrorChooseImage(context);
      } else {
        cubit.emitPetBackerLoginState();
      }
    }
  }

  void messageErrorChooseImage(BuildContext context) {
    appSnackBar(
      text: 'Please choose image',
      backGroundColor: Colors.red,
      context: context,
    );
  }
}
