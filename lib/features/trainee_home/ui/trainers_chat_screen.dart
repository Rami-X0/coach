import 'package:coach/core/widgets/app_app_bar.dart';
import 'package:coach/features/trainee_home/ui/widgets/chat/bloc_builder_all_chat_trainee.dart';
import 'package:flutter/material.dart';

class TrainersChatScreen extends StatelessWidget {
  const TrainersChatScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      appBar: AppAppBar(
        text: 'Chats',
        backButton: false,
      ),
      body: BlocBuilderAllChatTrainee(),
    );
  }
}
