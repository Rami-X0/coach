import 'package:coach/core/networking/api_services.dart';
import 'package:coach/core/networking/dio_factory.dart';
import 'package:coach/features/coach_login/data/repo/coach_login_repo.dart';
import 'package:coach/features/coach_login/logic/cubit/coach_login_cubit.dart';
import 'package:coach/features/trainee_home/data/repo/trainee_plan_repo.dart';
import 'package:coach/features/trainee_home/logic/cubit/trainee_home_cubit.dart';
import 'package:coach/features/trainee_sign_up/data/repo/trainee_sign_up_repo.dart';
import 'package:coach/features/trainee_sign_up/logic/cubit/trainee_sign_up_cubit.dart';
import 'package:coach/features/trainer_home/data/repo/trainer_plan_repo.dart';
import 'package:coach/features/trainer_home/logic/cubit/trainer_home_cubit.dart';
import 'package:coach/features/trainer_sign_up/data/repo/trainer_login_repo.dart';
import 'package:coach/features/trainer_sign_up/logic/cubit/trainer_sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  //ToDo: apiServices
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //ToDo: trainer sign up
  getIt.registerLazySingleton<TrainerSignUpCubit>(
      () => TrainerSignUpCubit(getIt()));
  getIt.registerLazySingleton<TrainerSignUpRepo>(
      () => TrainerSignUpRepo(getIt()));

  //ToDo: trainee sign up
  getIt.registerLazySingleton<TraineeSignUpCubit>(
      () => TraineeSignUpCubit(getIt()));
  getIt.registerLazySingleton<TraineeSignUpRepo>(
      () => TraineeSignUpRepo(getIt()));
  //ToDo: coach login
  getIt.registerLazySingleton<CoachLoginCubit>(() => CoachLoginCubit(getIt()));
  getIt.registerLazySingleton<CoachLoginRepo>(() => CoachLoginRepo(getIt()));

  //ToDo: trainer home
  getIt
      .registerLazySingleton<TrainerHomeCubit>(() => TrainerHomeCubit(getIt()));
  getIt.registerLazySingleton<TrainerHomeRepo>(() => TrainerHomeRepo(getIt()));
//ToDo: trainee home
  getIt
      .registerLazySingleton<TraineeHomeCubit>(() => TraineeHomeCubit(getIt()));
  getIt.registerLazySingleton<TraineeHomeRepo>(() => TraineeHomeRepo(getIt()));
}
