import 'package:coach/core/networking/api_constants.dart';
import 'package:coach/features/coach_login/data/models/coach_login_request.dart';
import 'package:coach/features/coach_login/data/models/coach_login_response.dart';
import 'package:coach/features/trainee_home/data/models/all_chat_response.dart';
import 'package:coach/features/trainee_home/data/models/all_messages_request.dart';
import 'package:coach/features/trainee_home/data/models/all_messages_response.dart';
import 'package:coach/features/trainee_home/data/models/all_trainer_account_response.dart';
import 'package:coach/features/trainee_home/data/models/create_message_request.dart';
import 'package:coach/features/trainee_home/data/models/trainee_plan_response.dart';
import 'package:coach/features/trainee_sign_up/data/models/trainee_sign_up_response.dart';
import 'package:coach/features/trainer_home/data/models/all_chat_trainer_response.dart';
import 'package:coach/features/trainer_home/data/models/all_messages_trainer_request.dart';
import 'package:coach/features/trainer_home/data/models/all_messages_trainer_response.dart';
import 'package:coach/features/trainer_home/data/models/create_message_trainer_request.dart';
import 'package:coach/features/trainer_home/data/models/trainer_plan_request.dart';
import 'package:coach/features/trainer_home/data/models/trainer_plan_response.dart';
import 'package:coach/features/trainer_sign_up/data/models/trainer_sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.trainerSignUp)
  Future<TrainerSignUpResponse> trainerSignUp(
      @Body() FormData formDateTrainerSingUp);

  @POST(ApiConstants.traineeSignUp)
  Future<TraineeSignUpResponse> traineeSignUp(
      @Body() FormData formDateTraineeSingUp);

  @POST(ApiConstants.traineeAndTrainerLogin)
  Future<CoachLoginResponse> traineeAndTrainerLogin(
      @Body() CoachLoginRequest coachLoginRequest);

  @POST(ApiConstants.trainerAddPlan)
  Future trainerAddPlan(@Body() TrainerPlanRequest trainerPlanRequest);

  @GET("${ApiConstants.trainerMyAllPlans}/{id}")
  Future<TrainerPlanResponse> trainerMyAllPlans(@Path('id') String trainerID);

  @GET("${ApiConstants.traineeAllPlans}/{id}")
  Future<TraineePlanResponse> traineeAllPlans(@Path('id') String trainerID);

  @GET(ApiConstants.allTrainers)
  Future<AllTRainerAccountResponse> getAllTrainers();

  @POST(ApiConstants.sendMessage)
  Future sendMessage(@Body() CreateMessageRequest sendMessage);

  @POST(ApiConstants.sendMessage)
  Future sendTrainerMessage(@Body() CreateMessageTrainerRequest sendMessage);

  @POST(ApiConstants.allMessageTraineeAndTrainer)
  Future<AllMessageResponse> allMessageTraineeAndTrainer(
      @Body() AllMessagesRequest allMessagesRequest);

  @GET('${ApiConstants.allChatForTrainee}/{id}')
  Future<AllChatResponse> allChatForTrainee(@Path('id') String id);

  @GET('${ApiConstants.allChatForTrainer}/{id}')
  Future<AllChatTrainerResponse> allChatForTrainer(@Path('id') String id);

  @POST(ApiConstants.allMessageTraineeAndTrainer)
  Future<AllMessageTrainerResponse> allMessageTrainerAndTrainee(
      @Body() AllMessagesTrainerRequest allMessagesTrainerRequest);

}
