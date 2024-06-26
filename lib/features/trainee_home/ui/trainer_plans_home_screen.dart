import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/widgets/app_app_bar.dart';
import 'package:coach/features/trainee_home/ui/widgets/plan/Bloc_builder_all_plan_trainer.dart';
import 'package:flutter/material.dart';


class TrainerPlansHomeScreen extends StatelessWidget {

  const TrainerPlansHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        text: 'Plans',
        // backButton: false,
        child: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: const BlocBuilderAllPlanTrainer(),
    );
  }
}
