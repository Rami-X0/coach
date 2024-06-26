import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/core/widgets/app_loading.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_state.dart';
import 'package:coach/features/trainee_home/ui/widgets/message/form_send_message.dart';
import 'package:coach/features/trainee_home/ui/widgets/message/messages_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BlocBuilderSendMessage extends StatelessWidget {
  const BlocBuilderSendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TraineeHomeCubit>().emitAllMessageTraineeAndTrainer();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 605.h,
            child: BlocBuilder<TraineeHomeCubit, TraineeHomeState>(
              buildWhen: (previous, current) =>
                  current is AllMessageTraineeAndTrainerLoading ||
                  current is AllMessageTraineeAndTrainerSuccess ||
                  current is AllMessageTraineeAndTrainerFailure,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Container(),
                  allMessageTraineeAndTrainerLoading: () {
                    return const AppLoading();
                  },
                  allMessageTraineeAndTrainerSuccess: (message) {
                    return ListView.builder(
                      shrinkWrap: true,
                      reverse: true,
                      itemCount: message.value.length,
                      itemBuilder: (context, index) {
                        return MessagesItem(
                          text: message.value[index].message.toString(),
                          isMe: message.value[index].senderId.value == traineeUserId,
                          index: index,
                        );
                      },
                    );
                  },
                  allMessageTraineeAndTrainerFailure: (failure) {
                    return Text('${failure.message}');
                  },
                );
              },
            ),
          ),
          Gap(10.h),
          const FormSendMessage(),
        ],
      ),
    );
  }
}
