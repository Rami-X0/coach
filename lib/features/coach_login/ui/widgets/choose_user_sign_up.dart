import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseUserSignUp extends StatelessWidget {
  const ChooseUserSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Choose user sign up!! ',
        style: TextStyles.font15DarkBlueMedium.copyWith(),
        children: [
          TextSpan(
              text: 'users',
              style: TextStyles.font15DarkBlueMedium.copyWith(
                fontSize: 17.sp,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => context
                    .pushNamedAndRemoveUntil(Routes.chooseUser),


          ),
        ],
      ),
    );
  }
}
