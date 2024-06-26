class ApiConstants {
  // base url for api

  static const String baseUrl = "http://coachme2020.somee.com";

  // base url for trainer sign up
  static const String trainerSignUp = "/api/Authentication/TrainerRegister";

// base url for trainee sign up
  static const String traineeSignUp = "/api/Authentication/TraineeRegister";

// base url for trainer & trainee login
  static const String traineeAndTrainerLogin = "/api/Authentication/login";

// base url for trainer add plan
  static const String trainerAddPlan = "/api/plan";
  static const String trainerMyAllPlans = "/api/plan/GetAllPlanForTrainer";
  static const String allTrainers = "/api/trainer";

// base url for trainee add plan
  static const String traineeAllPlans = "/api/plan/GetAllPlanForTrainer";

// base url chat
  static const String sendMessage = "/api/Chat";
  static const String allMessageTraineeAndTrainer = "/api/Chat/GetAllMessagesBetweenTrainerAndTrainee";
  static const String allChatForTrainer = "/api/Chat/GetAllMessagesForTrainer";
  static const String allChatForTrainee = "/api/Chat/GetAllMessagesForTrainee";


}
