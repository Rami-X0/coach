import 'package:coach/core/caching/app_shared_pref.dart';
import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/core/widgets/app_app_bar.dart';
import 'package:coach/features/trainer_home/ui/widgets/plan/Bloc_builder_all_plan_trainer.dart';
import 'package:coach/features/trainer_home/ui/widgets/plan/add_plan_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrainerHomeScreen extends StatelessWidget {
  const TrainerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: InkWell(
            child: const FaIcon(FontAwesomeIcons.arrowRightFromBracket),
            onTap: () {
              context.pushNamedAndRemoveUntil(Routes.coachLogin);
              AppSharedPref.removeKey(key: AppSharedPrefKey.traineeUserId);
              AppSharedPref.removeKey(key: AppSharedPrefKey.trainerToken);
            },
          ),
        ),
        text: 'Trainer',
        backButton: false,
        action: const [
          AddPlanButton(),
        ],
      ),
      body: const BlocBuilderAllPlanTrainer(),
    );
  }
}
