import 'package:coach/core/widgets/app_app_bar.dart';
import 'package:coach/features/trainer_home/ui/widgets/message/bloc_builder_send_message_trainer.dart';
import 'package:flutter/material.dart';

class TrainerSendMessagesScreenScreen extends StatelessWidget {
  const TrainerSendMessagesScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      appBar: AppAppBar(
        text: '',
      ),
      body: BlocBuilderSendMessageTrainer(),
    );
  }
}
