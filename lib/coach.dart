import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/core/routing/routes.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart' as route;

class CoachApp extends StatelessWidget {
  const CoachApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<TrainerHomeCubit>(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          onGenerateRoute: route.generateRoute,
          initialRoute: trainerToken == null
              ? (traineeToken == null)
                  ? Routes.chooseUser
                  : Routes.traineeNavigateBar
              : Routes.trainerNavigateBar,
        ),
      ),
    );
  }
}
