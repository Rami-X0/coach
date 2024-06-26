import 'package:coach/features/trainer_home/data/models/trainer_plan_response.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_state.dart';
import 'package:coach/features/trainer_home/ui/widgets/plan/plan_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:coach/core/widgets/app_loading.dart';

class BlocBuilderAllPlanTrainer extends StatelessWidget {
  const BlocBuilderAllPlanTrainer({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TrainerHomeCubit>().emitTrainerMyAllPlans();
    return BlocBuilder<TrainerHomeCubit, TrainerHomeState>(
      buildWhen: (previous, current) =>
          current is GetAllPlanLoading ||
          current is GetAllPlanSuccess ||
          current is GetAllPlanFailure,
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            getAllPlanLoading: () {
              return const AppLoading();
            },
            getAllPlanSuccess: (plan) {
              if (plan.value.isNotEmpty) {
                return allPlansView(plan: plan);
              } else {
                return const Center(child: Text('No Plans Found'));
              }
            },
            getAllPlanFailure: (failure) {
              return Text(failure.toString());
            });
      },
    );
  }

  Widget allPlansView({required TrainerPlanResponse plan}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: GridView.builder(
        itemCount: plan.value.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.w,
          mainAxisSpacing: 5.h,
          mainAxisExtent: 200.h,
        ),
        itemBuilder: (context, index) {
          return PlanViewItemTrainer(
            plan: plan,
            index: index,
          );
        },
      ),
    );
  }
}
