import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/widgets/app_text_form_field.dart';
import 'package:coach/features/trainer_sign_up/logic/cubit/trainer_sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class TrainerSignUpForm extends StatefulWidget {
  const TrainerSignUpForm({super.key});

  @override
  State<TrainerSignUpForm> createState() => _TrainerSignUpFormState();
}

class _TrainerSignUpFormState extends State<TrainerSignUpForm> {
  bool _showPassword = true;
  bool iFirstNameColorFailureIcon = false;
  bool isLastNameColorFailureIcon = false;
  bool iEmailColorFailureIcon = false;
  bool isPasswordColorFailureIcon = false;
  bool isAboutColorFailureIcon = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<TrainerSignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: context.read<TrainerSignUpCubit>().firstNameController,
            hintText: 'first name',
            suffixIcon: FaIcon(
              FontAwesomeIcons.user,
              color: iFirstNameColorFailureIcon
                  ? Colors.red
                  : ColorsManager.mainColor,
            ),
            validator: (value) {
              return validateFirstName(value);
            },
          ),
          Gap(16.h),
          AppTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: context.read<TrainerSignUpCubit>().lastNameController,
            hintText: 'last name',
            suffixIcon: FaIcon(
              FontAwesomeIcons.user,
              color: isLastNameColorFailureIcon
                  ? Colors.red
                  : ColorsManager.mainColor,
            ),
            validator: (value) {
              return validateLastName(value);
            },
          ),
          Gap(16.h),
          AppTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: context.read<TrainerSignUpCubit>().emailController,
            hintText: 'email',
            suffixIcon: FaIcon(
              FontAwesomeIcons.envelope,
              color: iEmailColorFailureIcon
                  ? Colors.red
                  : ColorsManager.mainColor,
            ),
            validator: (value) {
              return validateEmail(value);
            },
          ),
          Gap(16.h),
          AppTextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: context.read<TrainerSignUpCubit>().passwordController,
            hintText: 'password',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: FaIcon(
                _showPassword
                    ? FontAwesomeIcons.eyeSlash
                    : FontAwesomeIcons.eye,
                color: isPasswordColorFailureIcon
                    ? Colors.red
                    : ColorsManager.mainColor,
              ),
            ),
            obscureText: _showPassword,
            validator: (value) {
              return validatePassword(value);
            },
          ),
          Gap(16.h),
          AppTextFormField(
            minLines: 1,
            maxLine: 3,
            keyboardType: TextInputType.emailAddress,
            controller: context.read<TrainerSignUpCubit>().aboutController,
            hintText: 'about',
            suffixIcon: FaIcon(
              FontAwesomeIcons.comment,
              color: isAboutColorFailureIcon
                  ? Colors.red
                  : ColorsManager.mainColor,
            ),
            validator: (value) {
              return validateAbout(value);
            },
          ),
        ],
      ),
    );
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        iEmailColorFailureIcon = true;
      });
      return 'Please enter your user email';
    } else {
      setState(() {
        iEmailColorFailureIcon = false;
      });
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isPasswordColorFailureIcon = true;
      });
      return 'Please enter your password';
    } else if (value.length < 8) {
      setState(() {
        isPasswordColorFailureIcon = true;
      });
      return 'Password must be at least 8 characters';
    } else {
      setState(() {
        isPasswordColorFailureIcon = false;
      });
    }
    return null;
  }

  String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isPasswordColorFailureIcon = true;
      });
      return 'Please enter your first name';
    } else {
      setState(() {
        isPasswordColorFailureIcon = false;
      });
    }
    return null;
  }

  String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isLastNameColorFailureIcon = true;
      });
      return 'Please enter your last name';
    } else {
      setState(() {
        isLastNameColorFailureIcon = false;
      });
    }
    return null;
  }

  String? validateAbout(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isAboutColorFailureIcon = true;
      });
      return 'Please enter your about';
    } else {
      setState(() {
        isAboutColorFailureIcon = false;
      });
    }
    return null;
  }
}
