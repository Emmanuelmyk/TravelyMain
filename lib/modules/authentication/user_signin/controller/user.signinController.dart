import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:travely/modules/dashboard_layout.dart';

import '../../../../controller/base.controller.dart';
import '../../../../routing/app_pages.dart';

class UserSigninController extends BaseController {
  final _auth = FirebaseAuth.instance;
  var _verificationId = ''.obs;

  final phoneNoController = TextEditingController(
    text: kDebugMode ? '' : null,
  );
  final otpController = TextEditingController(
    text: kDebugMode ? '' : null,
  );

  void resendVerificationCode() {
    // Implement code to resend the verification code here
    // You can use a similar logic as the initial codeSent callback.
    // For example, you can call the same method as you did during initial code sending.
    signInwithPhoneNumber(phoneNoController.text.trim());
  }

  Future<void> signInwithPhoneNumber(String phoneNo) async {
    await _auth.verifyPhoneNumber(
        verificationCompleted: (credentials) async {
          await _auth.signInWithCredential(credentials);
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'The provided phone number is invalid');
          } else if (e.code == '17020 null') {
            Get.snackbar('', 'SMS verification code request failed');
          } else {
            Get.snackbar('error', 'something went wrong ');
          }
        },
        codeSent: (verificationId, resendToken) {
          _verificationId.value = verificationId;
          Get.offAndToNamed<void>(
            Routes.verifyScreen,
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {
          _verificationId.value = verificationId;
        },
        phoneNumber: "+234$phoneNo");
  }

  Future<void> signInWithOTP(String otp) async {
    try {
      // Use the verification ID stored in _verificationId
      AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId.value,
        smsCode: otp,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      // Now you have signed in the user, and you can access the current user
      User? user = userCredential.user;
      if (user != null) {
        // User is signed in, you can navigate to the next screen or perform other actions.

        Get.offAndToNamed<void>(
          Routes.verifiedScreen,
        );

        String uid = user.uid;
        print('User UID: $uid');
      } else {
        // Handle the case where user is null (sign-in failed)
        Get.snackbar('', 'something happened');
      }
    } catch (e) {
      // Handle any sign-in errors here

      print(e);
    }
  }

  // void navigateToRegisterPage() {
  //     Get.offAndToNamed<void>(
  //       Routes.dashLayout,
  //     );
  //   }
}
