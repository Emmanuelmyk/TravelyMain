import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travely/global_widgets/text.ui.dart';
import 'package:travely/modules/authentication/user_signin/verify_number.dart';
import 'package:travely/resources/res.dart';
import '../../../../routing/app_pages.dart';
import '../../onboarding/onboarding.ui.dart';
import 'controller/user.signinController.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  TextEditingController countryController = TextEditingController();
  final controller = Get.put(UserSigninController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 36,
              // ),
              IconButton(
                iconSize: 20,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingUi(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
              const Text(
                "Enter your phone number",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter your details below",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1.5),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                  width: 358.w,
                  child: TextField(
                    maxLength: 10,
                    controller: controller.phoneNoController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding:
                            const EdgeInsets.only(right: 20, top: 10, left: 10),
                        child: TextUi.bodyMedBold('+234'),
                      ),
                      border: InputBorder.none,
                      hintText: "Phone Number",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(color: grayScale200)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          borderSide: BorderSide(color: grayScale200)),
                    ),
                  )),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "By signing up, you accept our Terms of service and Privacy policy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.5),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 48.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 10, 76, 199),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            String phoneNumber =
                                controller.phoneNoController.text.trim();
                            if (phoneNumber.isNotEmpty) {
                              controller.signInwithPhoneNumber(phoneNumber);
                            } else {
                              Get.snackbar(
                                  'error', "please enter your phone number");
                            }
                          },
                          child: const Text(
                            'Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
