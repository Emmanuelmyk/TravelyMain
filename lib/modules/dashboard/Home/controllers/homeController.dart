import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../Models/userDataModel.dart';
import '../../../../controller/base.controller.dart';
import '../../../../routing/app_pages.dart';
import '../../../authentication/user_signin/controller/user.signinController.dart';

class HomeController extends BaseController {
  var isLoading = false.obs;
  late TextEditingController searchController;
  late TabController tabController;
  Rx<UserData?> userData = Rx<UserData?>(null);
  @override
  void onInit() {
    // Set the onSignOut callback to reset userData

    searchController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // Fetch user data when the controller is ready
    fetchUserData();
  }

  void searchGyms(String? query) {
    // Implement your search logic here
  }

  void openFreightDetails() {
    navigationService.navigateTo(
      Routes.freightDetails,
    );
  }

  // Reset the userData property

  void fetchUserData() async {
    UserSigninController userSigninController =
        Get.find<UserSigninController>();

    // Access the user variable from the controller
    User? user = userSigninController.user.value;

    if (user != null) {
      // Access the UID
      String uid = user.uid;
// Now you can use the UID as needed
      print('User UID: $uid');
      DatabaseReference reference =
          FirebaseDatabase.instance.ref().child('user').child(uid);

      reference.once().then((event) {
        final snap = event.snapshot;
        if (snap.value != null) {
          // Parse and use the data as needed

          userData.value = UserData.fromSnapshot(snap);
          // Access other user-related data fields

          // Now you can use the retrieved data within your app
          print(userData.value!.id);
          print(userData.value!.lastname);
        }
      });

      // Call the function to fetch and use user data
    }
  }
}
