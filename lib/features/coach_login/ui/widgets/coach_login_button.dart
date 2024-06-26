import 'package:coach/core/theming/styles.dart';
import 'package:coach/core/widgets/app_text_button.dart';
import 'package:coach/features/coach_login/logic/cubit/coach_login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoachLoginButton extends StatelessWidget {
  const CoachLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      onPressed: () => actionTapButtonLogin(context),
      text: 'Login',
      textStyle: TextStyles.font28WhiteSemiBold,
    );
  }

  void actionTapButtonLogin(BuildContext context) {
    final cubit = context.read<CoachLoginCubit>();
    if (cubit.formKey.currentState!.validate()) {
      cubit.emitCoachLoginState();
    }
  }
}
