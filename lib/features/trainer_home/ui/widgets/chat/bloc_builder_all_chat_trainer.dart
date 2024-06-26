import 'package:coach/core/widgets/app_loading.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_state.dart';
import 'package:coach/features/trainer_home/ui/widgets/chat/chats_trainer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlocBuilderAllChatTrainer extends StatelessWidget {
  const BlocBuilderAllChatTrainer({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TrainerHomeCubit>().emitAllChatForTrainer();
    return Column(
      children: [
        SizedBox(
          height: 605.h,
          child: BlocBuilder<TrainerHomeCubit, TrainerHomeState>(
            buildWhen: (previous, current) =>
                current is GetAllMessageForTrainerLoading ||
                current is GetAllMessageForTrainerSuccess ||
                current is GetAllMessageForTrainerFailure,
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                getAllMessageForTrainerLoading: () {
                  return const AppLoading();
                },
                getAllMessageForTrainerSuccess: (chats) {
                  if (chats.value.isNotEmpty) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: chats.value.length,
                      itemBuilder: (context, index) {
                        return ChatsTrainerItem(
                          data: chats,
                          index: index,
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text('No Chats Found'),
                    );
                  }
                },
                getAllMessageForTrainerFailure: (failure) {
                  return Text('${failure.message}');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
