import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/theming/styles.dart';
import 'package:coach/features/trainee_sign_up/logic/cubit/trainee_sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TraineeSignUpGender extends StatefulWidget {
  const TraineeSignUpGender({super.key});

  @override
  State<TraineeSignUpGender> createState() => _TraineeSignUpGenderState();
}

String genderMale = 'Male';
String genderFemale = 'Female';
String groupValue = 'Male';

class _TraineeSignUpGenderState extends State<TraineeSignUpGender> {
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: _defaultRadio(
              title: genderMale,
              value: genderMale,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value;
                  context.read<TraineeSignUpCubit>().gender = value;
                });
              }),
        ),
        Expanded(
          child: _defaultRadio(
              title: genderFemale,
              value: genderFemale,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value;
                  context.read<TraineeSignUpCubit>().gender = value;
                });
              }),
        ),
      ],
    );
  }

  Widget _defaultRadio({
    required String title,
    required dynamic value,
    required dynamic groupValue,
    required void Function(dynamic)? onChanged,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListTile(
        hoverColor: Colors.transparent,
        selectedTileColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
        dense: true,
        title: Text(
          title,
          style: TextStyles.font15DarkBlueMedium,
        ),
        leading: Radio(
          fillColor: WidgetStateProperty.all(ColorsManager.mainColor),
          overlayColor: WidgetStateProperty.all(ColorsManager.lightGray),
          value: value,
          onChanged: onChanged,
          groupValue: groupValue,
        ),
      ),
    );
  }
}
