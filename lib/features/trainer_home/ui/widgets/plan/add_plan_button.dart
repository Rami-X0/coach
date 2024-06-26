import 'package:coach/core/di/dependency_injection.dart';
import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/theming/styles.dart';
import 'package:coach/core/widgets/app_blur_dialog.dart';
import 'package:coach/core/widgets/app_snack_bar.dart';
import 'package:coach/core/widgets/app_text_button.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_state.dart';
import 'package:coach/features/trainer_home/ui/widgets/plan/form_trainer_add_plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AddPlanButton extends StatelessWidget {
  const AddPlanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => actionThenTapAddPlan(context),
      child: Text(
        'Add Plan',
        style: TextStyles.font15DarkBlueMedium,
      ),
    );
  }

  void actionThenTapAddPlan(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      traversalEdgeBehavior: TraversalEdgeBehavior.leaveFlutterView,
      builder: (context) {
        return BlocProvider.value(
          value: getIt<TrainerHomeCubit>(),
          child: AppBlurDialog(child: _buildDialogAddPlan(context)),
        );
      },
    );
  }

  Widget _buildDialogAddPlan(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TrainerHomeCubit>(),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        insetPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          width: double.maxFinite,
          height: 620.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CloseButton(onPressed: () => actionTapClose(context)),
                const FormTrainerAddPlan(),
                Gap(40.h),
                _addPlan(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void actionTapClose(BuildContext context) {
    final cubit = context.read<TrainerHomeCubit>();
    context.pop();
    cubit.pricePlanController.clear();
    cubit.namePlanController.clear();
    cubit.durationPlanController.clear();
    cubit.sessionPlanController.clear();
    cubit.focusPlanController.clear();
  }

  Widget _addPlan(BuildContext context) {
    return BlocBuilder<TrainerHomeCubit, TrainerHomeState>(
      builder: (context, state) {
        return AppTextButton(
          onPressed: () => actionTapButtonLogin(context),
          text: state is AddPlanLoading ? 'Loading...' : 'Done',
          textStyle: TextStyles.font28WhiteSemiBold,
        );
      },
    );
  }

  actionTapButtonLogin(BuildContext context) {
    final cubit = context.read<TrainerHomeCubit>();
    if (cubit.addPlanFormKey.currentState!.validate()) {
      cubit.emitTrainerHomeState().then(
        (value) {
          appSnackBar(
            text: 'Added Successfully',
            backGroundColor: Colors.green,
            context: context,
          );
          context.pop();
        context.read<TrainerHomeCubit>().emitTrainerMyAllPlans();
          },
      );
    }
  }
}
