import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/core/widgets/app_loading.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_state.dart';
import 'package:coach/features/trainer_home/ui/widgets/message/form_send_message_trainer.dart';
import 'package:coach/features/trainer_home/ui/widgets/message/messages_item_trainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BlocBuilderSendMessageTrainer extends StatelessWidget {
  const BlocBuilderSendMessageTrainer({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TrainerHomeCubit>().emitAllMessageTrainerAndTrainee();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 605.h,
              child: BlocBuilder<TrainerHomeCubit, TrainerHomeState>(
                buildWhen: (previous, current) =>
                    current is GetAllMessageForTrainerBetweenTraineeLoading ||
                    current is GetAllMessageForTrainerBetweenTraineeSuccess ||
                    current is GetAllMessageForTrainerBetweenTraineeFailure,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => Container(),
                    getAllMessageForTrainerBetweenTraineeLoading: () {
                      return const AppLoading();
                    },
                    getAllMessageForTrainerBetweenTraineeSuccess: (message) {
                      return ListView.builder(
                        shrinkWrap: true,
                       reverse: true,
                        itemCount: message.value.length,
                        itemBuilder: (context, index) {
                          final messageItem = message.value[index];
                          final isMe =
                              messageItem.senderId.value == trainerUserId;
                          return MessagesItemTrainer(
                            text: messageItem.message.toString(),
                            isMe: isMe,
                            index: index,
                          );
                        },
                      );
                    },
                    getAllMessageForTrainerBetweenTraineeFailure: (failure) {
                      return Text('${failure.message}');
                    },
                  );
                },
              ),
            ),
            Gap(10.h),
            const FormSendMessageTrainer(),
          ],
        ),
      ),
    );
  }
}
