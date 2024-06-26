import 'package:coach/coach.dart';
import 'package:coach/core/caching/app_shared_pref.dart';
import 'package:coach/core/caching/app_shared_pref_key.dart';
import 'package:coach/core/di/dependency_injection.dart';
import 'package:coach/core/helper/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/trainee_home/logic/cubit/trainee_home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setupGetIt();
  await AppSharedPref.initSharedPref();
  await ScreenUtil.ensureScreenSize();
  trainerUserId =
      await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.trainerUserId) ??
          '';
  traineeUserId =
      await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.traineeUserId) ??
          '';
  traineeToken =
      await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.traineeToken);
  trainerToken =
      await AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.trainerToken);
  runApp(
    BlocProvider(
      create: (_) => getIt<TraineeHomeCubit>(),
      child: const CoachApp(),
    ),
  );
}
