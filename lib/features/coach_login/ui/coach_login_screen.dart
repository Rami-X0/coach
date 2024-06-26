import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/widgets/scale_fade_align.dart';
import 'package:coach/features/coach_login/ui/widgets/bloc_listener_coach_login.dart';
import 'package:coach/features/coach_login/ui/widgets/choose_user_sign_up.dart';
import 'package:coach/features/coach_login/ui/widgets/coach_login_button.dart';
import 'package:coach/features/coach_login/ui/widgets/coach_login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CoachLoginScreen extends StatelessWidget {
  const CoachLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppScaleFadeAlign(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    child: Container(
                      width: 160.w,
                      height: 170.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorsManager.white,
                          width: 3.w,
                        ),
                        color: ColorsManager.mainColor,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/coach_app_logo.png'),
                        ),
                      ),
                    ),
                  ),
                  AppScaleFadeAlign(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Gap(18.h),
                        const CoachLoginForm(),
                        Gap(25.h),
                        const CoachLoginButton(),
                        Gap(25.h),
                        const ChooseUserSignUp(),
                        const BlocListenerCoachLogin(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
