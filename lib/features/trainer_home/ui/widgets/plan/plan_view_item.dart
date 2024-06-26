import 'dart:ui';

import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/theming/styles.dart';
import 'package:coach/features/trainer_home/data/models/trainer_plan_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanViewItemTrainer extends StatelessWidget {
  final TrainerPlanResponse plan;
  final int index;

  const PlanViewItemTrainer({super.key, required this.plan, required this.index});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.r),
      child: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY:2),
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/gym.jpg'),
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
              children: [
                _planeData(text: 'duration: ${plan.value[index].duration}'),
                const Divider(),
                _planeData(text: 'focus: ${plan.value[index].focus}'),
                const Divider(),
                _planeData(text: 'sessions: ${plan.value[index].sessions}'),
                const Divider(),
                _planeData(text: 'price: ${plan.value[index].price}'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _planeData({required String text}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyles.font15DarkBlueMedium.copyWith(
        color: Colors.white
      ),
      maxLines: 2,
    );
  }
}
