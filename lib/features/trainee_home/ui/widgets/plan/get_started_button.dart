import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/theming/styles.dart';
import 'package:coach/core/widgets/app_text_button.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      onPressed: () => actionThenTapGetStartedButton(context),
      text: 'GetStarted',
      textStyle: TextStyles.font15DarkBlueMedium,
      backGroundColor: ColorsManager.white,
      verticalSize: 40,
      horizontalSize: 100,
    );
  }

  actionThenTapGetStartedButton(BuildContext context) {
    final cubit = context.read<TraineeHomeCubit>();
    debugPrint(cubit.trainerId.toString());
context.pushNamed(Routes.traineeSendMessage);
     }
}
