import 'package:coach/core/widgets/app_app_bar.dart';
import 'package:coach/features/trainee_home/ui/widgets/message/bloc_builder_send_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TraineeSendMessageScreen extends StatelessWidget {

  const TraineeSendMessageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(text: ''),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: const BlocBuilderSendMessage(),
      ),
    );
  }
}