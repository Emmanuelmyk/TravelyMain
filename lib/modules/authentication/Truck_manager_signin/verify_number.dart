import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:travely/modules/authentication/user_signin/phone_number.dart';

import 'number_verified.dart';

class TruckManagerVerifyScreen extends StatefulWidget {
  const TruckManagerVerifyScreen({super.key});

  @override
  State<TruckManagerVerifyScreen> createState() =>
      _TruckManagerVerifyScreenState();
}

class _TruckManagerVerifyScreenState extends State<TruckManagerVerifyScreen> {
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
                    builder: (context) => const PhoneScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 25),
            const Text(
              "Verify your phone number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Please enter the OTP sent to +234 ########## so we can verify your account",
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w400, height: 1.5),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 47,
              child: OtpTextField(
                numberOfFields: 6,
                fieldWidth: 45,
                // borderColor: const Color.fromARGB(255, 17, 248, 0),
                enabledBorderColor: const Color.fromARGB(120, 74, 104, 173),
                focusedBorderColor: const Color.fromARGB(255, 93, 103, 209),
                borderWidth: 2.0,
                showFieldAsBox: true,
                onSubmit: (String verificationCode) {},
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text(
                "Didn't receive a code? Resend",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                              builder: (context) =>
                                  const TruckManagerVerifiedScreen(),
                            ),
                          );
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
