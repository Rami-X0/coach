
import 'package:coach/core/widgets/app_loading.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_state.dart';
import 'package:coach/features/trainee_home/ui/widgets/chat/chats_trainee_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlocBuilderAllChatTrainee extends StatelessWidget {
  const BlocBuilderAllChatTrainee({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TraineeHomeCubit>().emitAllChatForTrainee();
    return Column(
      children: [
        SizedBox(
          height: 605.h,
          child: BlocBuilder<TraineeHomeCubit, TraineeHomeState>(
            buildWhen: (previous, current) =>
                current is AllChatForTraineeLoading ||
                current is AllChatForTraineeSuccess ||
                current is AllChatForTraineeFailure,
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                allChatForTraineeLoading: () {
                  return const AppLoading();
                },
                allChatForTraineeSuccess: (chats) {
                  if(chats.value.isNotEmpty){
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: chats.value.length,
                      itemBuilder: (context, index) {
                        return ChatsTraineeItem(data: chats,index: index,);
                      },
                    );
                  }else{
                    return const Center(
                      child: Text('No Chats Found'),
                    );
                  }

                },
                allChatForTraineeFailure: (failure) {
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
