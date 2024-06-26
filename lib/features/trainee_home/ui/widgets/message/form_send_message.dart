import 'package:coach/core/theming/colors.dart';
import 'package:coach/core/widgets/app_text_form_field.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormSendMessage extends StatefulWidget {
  const FormSendMessage({
    super.key,
  });

  @override
  State<FormSendMessage> createState() => _FormChatState();
}

class _FormChatState extends State<FormSendMessage> {
  bool isMessageColorFailureIcon = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<TraineeHomeCubit>().sendMessageFormKey,
      child: AppTextFormField(
        keyboardType: TextInputType.text,
        controller: context.read<TraineeHomeCubit>().sendMessageController,
        hintText: 'write your message',
        suffixIcon: InkWell(
          borderRadius: BorderRadius.circular(10.r),
          onTap: () => actionTapThenSendMessage(context),
          child: Container(
            width: 25.0,
            height: 25.0,
            alignment: Alignment.center,
            child: FaIcon(
              FontAwesomeIcons.solidPaperPlane,
              color: isMessageColorFailureIcon
                  ? Colors.red
                  : ColorsManager.mainColor,
            ),
          ),
        ),
        validator: (value) {
          return validateMessage(value);
        },
      ),
    );
  }

  String? validateMessage(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        isMessageColorFailureIcon = true;
      });
      return 'Write message';
    } else {
      setState(() {
        isMessageColorFailureIcon = false;
      });
    }
    return null;
  }

  actionTapThenSendMessage(BuildContext context) {

    final cubit = context.read<TraineeHomeCubit>();
    if (cubit.sendMessageFormKey.currentState!.validate()) {
      cubit.emitTraineeSendMessage();
       }
  }
}