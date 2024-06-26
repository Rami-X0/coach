import 'package:coach/core/widgets/app_loading.dart';
import 'package:coach/features/trainee_home/data/models/all_trainer_account_response.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_state.dart';
import 'package:coach/features/trainee_home/ui/widgets/trainer_account/all_trainers_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlocBuilderAllTrainers extends StatelessWidget {
  const BlocBuilderAllTrainers({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TraineeHomeCubit>().emitAllTrainers();
    return BlocBuilder<TraineeHomeCubit, TraineeHomeState>(
      buildWhen: (previous, current) =>
          current is GetAllTrainersLoading ||
          current is GetAllTrainersSuccess ||
          current is GetAllTrainersFailure,
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => Container(),
            getAllTrainersLoading: () {
              return const AppLoading();
            },
            getAllTrainersSuccess: (trainer) {
              return allTrainersView(trainer: trainer);
            },
            getAllTrainersFailure: (failure) {
              return Text(failure.toString());
            });
      },
    );
  }

  Widget allTrainersView({required AllTRainerAccountResponse trainer}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: GridView.builder(
        itemCount: trainer.value.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.w,
          mainAxisSpacing: 5.h,
          mainAxisExtent: 150.h,
        ),
        itemBuilder: (context, index) {
          return AllTrainersViewItem(
            trainer: trainer,
            index: index,
          );
        },
      ),
    );
  }
}
