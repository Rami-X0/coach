

import 'package:coach/core/caching/app_shared_pref.dart';

class AppSharedPrefKey {
  static String trainerUserId = 'trainerUserId';
  static String traineeUserId = 'traineeUserId';
  static String traineeToken = 'traineeToken';
  static String trainerToken = 'trainerToken';

}


var trainerUserId = AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.trainerUserId);
var traineeUserId = AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.traineeUserId);
var traineeToken = AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.traineeToken);
var trainerToken = AppSharedPref.sharedPrefGet(key: AppSharedPrefKey.trainerToken);

