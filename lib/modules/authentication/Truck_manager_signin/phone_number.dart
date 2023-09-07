import 'package:flutter/material.dart';
import 'package:travely/modules/authentication/user_signin/verify_number.dart';

import '../../onboarding/onboarding.ui.dart';

class TruckManagerPhoneScreen extends StatefulWidget {
  const TruckManagerPhoneScreen({super.key});

  @override
  State<TruckManagerPhoneScreen> createState() =>
      _TruckManagerPhoneScreenState();
}

class _TruckManagerPhoneScreenState extends State<TruckManagerPhoneScreen> {
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
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
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(16)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Phone Number",
                    ),
                  ))
                ],
              ),
            ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VerifyScreen(),
                            ),
                          );
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
    );
  }
}
