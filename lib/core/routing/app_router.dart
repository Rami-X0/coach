import 'package:coach/core/di/dependency_injection.dart';
import 'package:coach/core/routing/animation_routing/app_alignment_router.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/features/choose_user/choose_user.dart';
import 'package:coach/features/coach_login/logic/cubit/coach_login_cubit.dart';
import 'package:coach/features/coach_login/ui/coach_login_screen.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:coach/features/trainee_home/ui/trainee_navigation_bar.dart';
import 'package:coach/features/trainee_home/ui/trainee_send_message_screen.dart';
import 'package:coach/features/trainee_home/ui/trainer_plans_home_screen.dart';
import 'package:coach/features/trainee_sign_up/logic/cubit/trainee_sign_up_cubit.dart';
import 'package:coach/features/trainee_sign_up/ui/trainer_sign_up_screen.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:coach/features/trainer_home/ui/trainer_home_screen.dart';
import 'package:coach/features/trainer_home/ui/trainer_messages_screen.dart';
import 'package:coach/features/trainer_home/ui/trainer_navigation_bar.dart';
import 'package:coach/features/trainer_sign_up/logic/cubit/trainer_sign_up_cubit.dart';
import 'package:coach/features/trainer_sign_up/ui/trainer_sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.chooseUser:
      return MaterialPageRoute(
        builder: (_) => const ChooseAccountUser(),
      );
    case Routes.trainerSingUp:
      return MaterialPageRoute(
        builder: (_) => BlocProvider.value(
            value: getIt<TrainerSignUpCubit>(),
            child: const TrainerSigUpScreen()),
      );
    case Routes.traineeSingUp:
      return MaterialPageRoute(
        builder: (_) => BlocProvider.value(
            value: getIt<TraineeSignUpCubit>(),
            child: const TraineeSigUpScreen()),
      );
    case Routes.coachLogin:
      return MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: getIt<CoachLoginCubit>(),
          child: const CoachLoginScreen(),
        ),
      );
    case Routes.trainerHome:
      return MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: getIt<TrainerHomeCubit>(),
          child: const TrainerHomeScreen(),
        ),
      );
    case Routes.trainerNavigateBar:
      return MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: getIt<TrainerHomeCubit>(),
          child: const TrainerNavigationBar(),
        ),
      );
    case Routes.traineeNavigateBar:
      return MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: getIt<TraineeHomeCubit>(),
          child: const TraineeNavigationBar(),
        ),
      );
    case Routes.trainerPlane:
      return AppAlignmentRouter(
        BlocProvider.value(
          value: getIt<TraineeHomeCubit>(),
          child: const TrainerPlansHomeScreen(),
        ),
      );
    case Routes.traineeSendMessage:
      return AppAlignmentRouter(
        BlocProvider.value(
          value: getIt<TraineeHomeCubit>(),
          child: const TraineeSendMessageScreen(),
        ),
      );
      case Routes.trainerSendMessage:
      return AppAlignmentRouter(
        BlocProvider.value(
          value: getIt<TrainerHomeCubit>(),
          child: const TrainerSendMessagesScreenScreen(),
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
