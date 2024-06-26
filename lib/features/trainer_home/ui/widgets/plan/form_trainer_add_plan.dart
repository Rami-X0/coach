import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/widgets/app_text_form_field.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class FormTrainerAddPlan extends StatefulWidget {
  const FormTrainerAddPlan({super.key});

  @override
  State<FormTrainerAddPlan> createState() => _FormTrainerAddPlanState();
}

bool isNamePlanColorFailureIcon = false;
bool isDurationColorFailureIcon = false;
bool isFocusColorFailureIcon = false;
bool isSessionColorFailureIcon = false;
bool isPriceColorFailureIcon = false;

class _FormTrainerAddPlanState extends State<FormTrainerAddPlan> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<TrainerHomeCubit>().addPlanFormKey,
      child: Column(
        children: [
          AppTextFormField(
            maxLine: 3,
            minLines: 3,
            keyboardType: TextInputType.text,
            controller: context.read<TrainerHomeCubit>().namePlanController,
            hintText: 'plane name',
            suffixIcon: FaIcon(
              FontAwesomeIcons.fileSignature,
              color: isNamePlanColorFailureIcon
                  ? Colors.red
                  : ColorsManager.mainColor,
            ),
            validator: (value) {
              return validatePlaneName(value);
            },
          ),
          Gap(20.h),
          AppTextFormField(
            keyboardType: TextInputType.text,
            controller: context.read<TrainerHomeCubit>().focusPlanController,
            hintText: 'focus',
            suffixIcon: FaIcon(
              FontAwesomeIcons.handFist,
              color:
              isFocusColorFailureIcon ? Colors.red : ColorsManager.mainColor,
            ),
            validator: (value) {
              return validateFocus(value);
            },
          ),
          Gap(20.h),
          Row(

            children: [
              Flexible(
                flex: 1,
                child: AppTextFormField(
                  hintTextSize: 11.sp,

                  keyboardType: TextInputType.text,
                  controller:
                      context.read<TrainerHomeCubit>().durationPlanController,
                  hintText: 'duration',
                  suffixIcon: FaIcon(
                    FontAwesomeIcons.businessTime,
                    color: isDurationColorFailureIcon
                        ? Colors.red
                        : ColorsManager.mainColor,
                  ),
                  validator: (value) {
                    return validateDuration(value);
                  },
                ),
              ),
              Gap(2.w),
              Flexible(
                flex:1,
                child: AppTextFormField(
                  hintTextSize: 11.sp,

                  keyboardType: TextInputType.text,
                  controller:
                      context.read<TrainerHomeCubit>().sessionPlanController,
                  hintText: 'sessions',
                  suffixIcon: FaIcon(
                    FontAwesomeIcons.chalkboard,
                    color: isSessionColorFailureIcon
                        ? Colors.red
                        : ColorsManager.mainColor,
                  ),
                  validator: (value) {
                    return validateSession(value);
                  },
                ),
              ),
              Gap(2.w),

              Flexible(
                flex: 1,
                child: AppTextFormField(
                  hintTextSize: 11.sp,

                  keyboardType: TextInputType.text,
                  controller:
                      context.read<TrainerHomeCubit>().pricePlanController,
                  hintText: 'price',
                  suffixIcon: FaIcon(
                    FontAwesomeIcons.barcode,
                    color: isPriceColorFailureIcon
                        ? Colors.red
                        : ColorsManager.mainColor,
                  ),
                  validator: (value) {
                    return validatePrice(value);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String? validatePlaneName(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isNamePlanColorFailureIcon = true;
      });
      return 'Please enter plan name';
    } else {
      setState(() {
        isNamePlanColorFailureIcon = false;
      });
    }
    return null;
  }

  String? validateDuration(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isDurationColorFailureIcon = true;
      });
      return 'enter duration';
    } else {
      setState(() {
        isDurationColorFailureIcon = false;
      });
    }
    return null;
  }

  String? validateSession(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isSessionColorFailureIcon = true;
      });
      return 'enter session';
    } else {
      setState(() {
        isSessionColorFailureIcon = false;
      });
    }
    return null;
  }
  String? validatePrice(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isPriceColorFailureIcon = true;
      });
      return 'enter price';
    } else {
      setState(() {
        isPriceColorFailureIcon = false;
      });
    }
    return null;
  }
  String? validateFocus(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isFocusColorFailureIcon = true;
      });
      return 'please enter focus';
    } else {
      setState(() {
        isFocusColorFailureIcon = false;
      });
    }
    return null;
  }


}
