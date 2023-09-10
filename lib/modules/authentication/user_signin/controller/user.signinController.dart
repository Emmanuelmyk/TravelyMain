import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:travely/modules/dashboard_layout.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../../../controller/base.controller.dart';
import '../../../../routing/app_pages.dart';

class UserSigninController extends BaseController {
  final _auth = FirebaseAuth.instance;
  var _verificationId = ''.obs;
  DatabaseReference databaseRef = FirebaseDatabase.instance.ref().child('user');
  final Rx<User?> user = Rx<User?>(null);
  var isLoading = false.obs;
  VoidCallback? onSignOut;

  @override
  void onInit() {
    isLoading.value = false;
    // TODO: implement onInit
    super.onInit();
  }

  // var uid = ''.obs;
  final phoneNoController = TextEditingController(
    text: kDebugMode ? '' : null,
  );
  final otpController = TextEditingController(
    text: kDebugMode ? '' : null,
  );

  final firstnameController = TextEditingController(
    text: kDebugMode ? '' : null,
  );
  final lastnameController = TextEditingController(
    text: kDebugMode ? '' : null,
  );
  final emailController = TextEditingController(
    text: kDebugMode ? '' : null,
  );
  void resendVerificationCode() {
    // Implement code to resend the verification code here
    // You can use a similar logic as the initial codeSent callback.
    // For example, you can call the same method as you did during initial code sending.
    signInwithPhoneNumber(phoneNoController.text.trim());
  }

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
  Future<void> signInwithPhoneNumber(String phoneNo) async {
    print('running');
    isLoading.value =
        true; // Set isLoading to true when the verification process starts
    try {
      await _auth.verifyPhoneNumber(
        verificationCompleted: (credentials) async {
          await _auth.signInWithCredential(credentials);
          isLoading.value =
              false; // Set isLoading to false when verification is completed
        },
        timeout: Duration(milliseconds: 1),
        verificationFailed: (e) {
          isLoading.value =
              false; // Set isLoading to false when verification fails
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
          isLoading.value = false;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          _verificationId.value = verificationId;
        },
        phoneNumber: "+234$phoneNo",
      );
    } catch (e) {
      isLoading.value =
          false; // Set isLoading to false in case of any exceptions
      print('Error during phone verification: $e');
    }
  }

/////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
  Future<void> signInWithOTP(String otp) async {
    print('working');
    isLoading.value = true;
    try {
      AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId.value,
        smsCode: otp,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      User? signedInUser = userCredential.user;
      if (signedInUser != null) {
        // Set the user in the Rx variable
        user.value = signedInUser;

        // User is signed in, you can navigate to the next screen or perform other actions.
        Get.offAndToNamed<void>(Routes.verifiedScreen);
        isLoading.value = false;
        var uid = signedInUser.uid;
        print('User UID: $uid');
      } else {
        // Handle the case where user is null (sign-in failed)
        Get.snackbar('', 'Something happened');
        isLoading.value = false;
      }
    } catch (e) {
      // Handle any sign-in errors here
      if (e == 'firebase_auth/session-expired') {
        // Display a message to inform the user that the SMS code has expired.
        Get.snackbar(
          '',
          'The SMS code has expired. Please re-send the verification code to try again.',
        );

        // Optionally, provide a button to resend the OTP.
        // Example: Show a "Resend OTP" button that calls `signInWithPhoneNumber` again.
      } else {
        // Handle other sign-in errors
        Get.snackbar('', 'Sign-in error: $e');
        print(e);
      }
    }
    isLoading.value = false;
  }

/////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////
  void CreateUserInRealtimeDatabase(
      String email, String firstname, String lastname) async {
    isLoading.value = true;
    var phonenoReceiver = phoneNoController.text;

    await databaseRef.child(user.value!.uid).set({
      'Id': user.value!.uid,
      'Phone No': "+234$phonenoReceiver",
      'email': email,
      'firstname': firstname,
      'lastname': lastname,
    });
    Get.offAndToNamed<void>(
      Routes.dashLayout,
    );
    isLoading.value = false;
  }

  void navigateToRegisterPage() {
    Get.offAndToNamed<void>(
      Routes.dashLayout,
    );
  }
  ///////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////////

  Future<bool> checkUserProfileExists() async {
    isLoading.value = true;
    try {
      // Get the user from the Rx observable
      User? currentUser = user.value;

      if (currentUser != null) {
        // Get the user's UID
        String userUid = currentUser.uid;

        // Reference to the Firebase Realtime Database
        DatabaseReference databaseRef =
            FirebaseDatabase.instance.ref().child('user');

        // Check if the user's UID exists in the database
        DataSnapshot snapshot = await databaseRef.child(userUid).get();

        // If the snapshot has a value, the user profile exists
        if (snapshot.value != null) {
          return true;
        }
        isLoading.value = false;
      }
      isLoading.value = false;
      // User profile doesn't exist
      return false;
    } catch (e) {
      // Handle any errors or exceptions here
      print('Error checking user profile: $e');
      return false; // You can handle this differently based on your needs
    }
  }

  Future<void> signOutUser() async {
    try {
      // Sign out the user using Firebase Authentication
      await _auth.signOut();

      // Clear the user information in GetX controller
      user.value = null;
      // isSignedIn.value = false;

      // You can also clear any other user-related data or states here
      if (onSignOut != null) {
        onSignOut!();
      }

      // Navigate to the sign-in screen or any other screen you prefer
      phoneNoController.clear();
      Get.offAllNamed(Routes.phoneScreen);
    } catch (e) {
      // Handle sign-out errors here
      print('Error signing out: $e');
    }
  }
}
