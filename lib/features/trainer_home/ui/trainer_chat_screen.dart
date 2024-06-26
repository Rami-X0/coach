import 'package:coach/core/widgets/app_app_bar.dart';
import 'package:coach/features/trainer_home/ui/widgets/chat/bloc_builder_all_chat_trainer.dart';
import 'package:flutter/material.dart';

class TrainerChatScreen extends StatelessWidget {
  const TrainerChatScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      appBar: AppAppBar(
        text: 'Chats',
        backButton: false,
      ),
      body: BlocBuilderAllChatTrainer(),
    );
  }
}
