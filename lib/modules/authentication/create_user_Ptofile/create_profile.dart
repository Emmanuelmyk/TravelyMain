import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travely/modules/dashboard_layout.dart';
import '../user_signin/controller/user.signinController.dart';
import '../../../routing/app_pages.dart';
import 'create_user.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  TextEditingController countryController = TextEditingController();
  final controller = Get.put(UserSigninController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 117,
            ),
            const Text(
              "Which type of user are you?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Choose how you would like to use the app",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, height: 1.5),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              height: 92.0,
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Colors.black45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () async {
                  // Check if the user profile exists in the database
                  bool profileExists =
                      await controller.checkUserProfileExists();

                  if (profileExists) {
                    // User profile exists, navigate to the dashboard
                    Get.offAndToNamed<void>(Routes.dashLayout);
                  } else {
                    // User profile doesn't exist, navigate to createProfile screen
                    Get.offAndToNamed<void>(Routes.createUser);
                  }
                },
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Importer/Agent/Cargo Owner',
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                    Text(
                      'You want to request trucking services to transport goods anywhere in Nigeria.',
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 92.0,
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Colors.black45,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SplashScreen(),
                  //   ),
                  // );
                },
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Importer/Agent/Cargo Owner',
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                    Text(
                      'You want to request trucking services to transport goods anywhere in Nigeria.',
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 48.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 10, 76, 199),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const CreateUser(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
