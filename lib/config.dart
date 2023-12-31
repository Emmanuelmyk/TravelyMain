import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:travely/modules/dashboard/truck_manager_dashboard/Home/controllers/homeController.dart';

import 'controller/base.controller.dart';
import 'modules/authentication/user_signin/controller/user.signinController.dart';
import 'modules/dashboard/Home/controllers/homeController.dart';
import 'services/navigation.service.dart';

Future<void> initializeHive() async {
  //Get application directory (storage directory on device)
  final dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);

  //Open all hive boxes here
  // await Hive.openBox<UserRepo?>('user');

  //register all adapters here
  // Hive.registerAdapter<UserRepo>(UserRepoAdapter());
}

void setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    if (kDebugMode) {
      print('${rec.level.name}: ${rec.time}: ${rec.message}');
    }
  });
}

Future<void> initializeServices() async {
  ///Init all services here
  Get
    // ..lazyPut(StorageService.new)
    // ..lazyPut(ThemeService.new)
    ..lazyPut(NavigationService.new)
    ..lazyPut(BaseController.new, fenix: true);
  Get.put(UserSigninController());
  Get.put(HomeController());
  Get.put(TruckManagerHomeController());
}

bool ChooseRoleRoute = false;
bool GymOwnerSelect = false;
bool userSelect = false;
String userName = '';
String firstName = '';
String phoneNumber = '';
late bool isLoading;
bool isLoggedIn = false;

late Box box1;
