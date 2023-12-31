import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'package:intl/intl.dart';
import '../../../../controller/base.controller.dart';
import '../../../../routing/app_pages.dart';
import '../../../authentication/user_signin/controller/user.signinController.dart';

class ProfileController extends BaseController {
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  final UserSigninController userSigninController =
      Get.find<UserSigninController>();

  void signout() {
    userSigninController.signOutUser();
  }
}
