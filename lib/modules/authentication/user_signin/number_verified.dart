import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import '../create_user_Ptofile/create_profile.dart';

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({super.key});

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Lottie.asset('assets/animations/check.json',
                      width: 150, height: 150, fit: BoxFit.fill),
                  const Text(
                    "Phone number Verified",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Your phone number has been verified successfully",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400, height: 1.5),
                  ),
                ]),
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
                              builder: (context) => const CreateProfile(),
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
