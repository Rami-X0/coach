import 'package:coach/core/caching/app_shared_pref.dart';
import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/core/helper/extension.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/core/widgets/app_app_bar.dart';
import 'package:coach/features/trainee_home/ui/widgets/trainer_account/Bloc_builder_all_trainers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrainersHomeScreen extends StatelessWidget {
  const TrainersHomeScreen({super.key});

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
              AppSharedPref.removeKey(key: AppSharedPrefKey.trainerUserId);
              AppSharedPref.removeKey(key: AppSharedPrefKey.traineeToken);
            },
          ),
        ),
        text: 'Trainee',
        backButton: false,
      ),
      body: const BlocBuilderAllTrainers(),
    );
  }
}
