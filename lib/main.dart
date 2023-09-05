import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:travely/services/navigation.service.dart';

import 'config.dart';
import 'routing/app_pages.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // await Firebase.initializeApp();
  await initializeServices();

  runApp(TravelyApp());
}

class TravelyApp extends StatelessWidget {
  const TravelyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return OverlaySupport.global(
          child: GetMaterialApp(
            navigatorKey: Get.find<NavigationService>().navigatorKey,
            initialRoute: Routes.dashLayout,

            //  (JwtDecoder.isExpired(token.toString()) == false)
            //     ? Routes.app
            //     : Routes.onboarding,
            // unknownRoute: AppPages.unknownRoute,
            // theme: Get.find<ThemeService>().light,
            // themeMode: Get.find<ThemeService>().getThemeMode(),
            // darkTheme: Get.find<ThemeService>().dark,

            getPages: AppPages.pages,
            title: 'Travely',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
            ),
          ),
        );
      },
    );
  }
}
