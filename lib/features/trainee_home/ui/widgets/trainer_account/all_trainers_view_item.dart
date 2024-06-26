import 'dart:convert';
import 'dart:ui';

import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/theming/styles.dart';
import 'package:coach/features/trainee_home/data/models/all_trainer_account_response.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllTrainersViewItem extends StatefulWidget {
  final AllTRainerAccountResponse trainer;
  final int index;

  const AllTrainersViewItem({
    super.key,
    required this.trainer,
    required this.index,
  });

  @override
  State<AllTrainersViewItem> createState() => _AllTrainersViewItemState();
}
class _AllTrainersViewItemState extends State<AllTrainersViewItem> {
  @override
  Widget build(BuildContext context) {
    final trainerImage=base64Decode( base64.normalize(widget.trainer.value[widget.index].image));
    return InkWell(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image:MemoryImage(trainerImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorsManager.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: ColorsManager.mainColor, width: 1.5),
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  trainerData(
                      text:
                          'name:${widget.trainer.value[widget.index].username}'),
                  const Divider(),
                  trainerData(
                      text:
                          'about:${widget.trainer.value[widget.index].about}'),
                  const Divider(),
                  trainerData(
                      text:
                          'email:${widget.trainer.value[widget.index].email}'),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        context.pushNamed(Routes.trainerPlane);
        setState(() {
          context.read<TraineeHomeCubit>().trainerId =
              widget.trainer.value[widget.index].id.value.toString();
        });
      },
    );
  }

  Widget trainerData({required String text}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyles.font15DarkBlueMedium
          .copyWith(color: Colors.white, fontSize: 12.sp),
      maxLines: 1,
    );
  }
}
