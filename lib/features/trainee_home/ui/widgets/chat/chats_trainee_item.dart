import 'dart:convert';

import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/core/theming/colors.dart';
import 'package:coach/features/trainee_home/data/models/all_chat_response.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsTraineeItem extends StatefulWidget {
  final AllChatResponse data;
  final int index;

  const ChatsTraineeItem({
    super.key,
    required this.data,
    required this.index,
  });

  @override
  State<ChatsTraineeItem> createState() => _ChatsTraineeItemState();
}

class _ChatsTraineeItemState extends State<ChatsTraineeItem> {
  @override
  Widget build(BuildContext context) {
    final trainerImage = base64Decode(widget.data.value[widget.index].image);
    return Column(children: [
      InkWell(
        child: Row(
          children: [
            Container(
              width: 60.w,
              height: 70.h,
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: ColorsManager.skyBlue,
                shape: BoxShape.circle,
                border: Border.all(
                    color: ColorsManager.skyBlue.withOpacity(0.5), width: 2.w),
                image: DecorationImage(
                    image: MemoryImage(trainerImage), fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Text(
                  '${widget.data.value[widget.index].firstName} ${widget.data.value[widget.index].secondName} ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
        onTap: () {
          setState(() {
            context.read<TraineeHomeCubit>().trainerId =
                widget.data.value[widget.index].id.value;
          });
          context.pushNamed(Routes.traineeSendMessage);
        },
      ),
      const Divider(),
    ]);
  }
}
