import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

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

  Future<void> signInwithPhoneNumber(String phoneNo) async {
    await _auth.verifyPhoneNumber(
        verificationCompleted: (credentials) async {
          await _auth.signInWithCredential(credentials);
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'The provided phone number is invalid');
          } else {
            Get.snackbar('error', 'something went wrong');
          }
        },
        codeSent: (verificationId, resendToken) {
          _verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          _verificationId.value = verificationId;
        },
        phoneNumber: phoneNo);
  }

  // Future<bool> verifyOtp(String otp) async {
  //   var credentials = _auth.signInWithPhoneNumber(PhoneAuthProvider.credential(
  //       verificationId: _verificationId.value, smsCode: otp) as String);
  //   return credentials.user != null ? true : false;
  // }
}
