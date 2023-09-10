import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'package:intl/intl.dart';
import '../../../../controller/base.controller.dart';
import '../../../../enum.dart';
import '../../../../routing/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:travely/resources/res.dart';

import '../../../../../global_widgets/button.ui.dart';
import '../../../../../global_widgets/gap.ui.dart';
import '../../../../../global_widgets/text.ui.dart';
import '../../../../../resources/colors.res.dart';

class FreightDetailController extends BaseController {
  var isLoading = false.obs;

  Rx<DateTime> selectedDate = DateTime.now().obs;
  Rx<TimeOfDay> selectedTime = TimeOfDay.now().obs;
  var selectedTruck = TruckType.flatbed.obs;
  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

//select truck logic

  late TextEditingController searchController;
  late TabController tabController;

  void searchGyms(String? query) {}

  void openFreightDetails() {
    navigationService.navigateTo(
      Routes.freightDetails,
    );
  }

  // void openBottomSheet() {
  //   Get.bottomSheet(
  //     _buildBottomSheetContent(),
  //   );
  // }

  // Widget _buildBottomSheetContent() {
  //   switch (selectedService.value) {
  //     case ServiceType.TruckType:
  //       return _buildTruckTypeSheet();
  //     case ServiceType.CargoWeight:
  //       return _buildCargoWeightSheet();
  //     default:
  //       return SizedBox.shrink();
  //   }
  // }

  void setSelectedTruckType(TruckType truckType) {
    selectedTruck.value = truckType;
  }

  Future<void> makePayment() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 5));
    // login with node js backend

    //   try {
    //     await FirebaseAuth.instance.signInWithEmailAndPassword(
    //         email: emailOrPhoneController.text,
    //         password: passwordController.text);

    //     await Get.offAllNamed<void>(
    //       Routes.app,
    //     );
    //   } on FirebaseAuthException catch (e) {
    //     if (e.code == 'user-not-found') {
    //       Get.snackbar('no user', 'No user found for that email');
    //     } else if (e.code == 'wrong-password') {
    //       Get.snackbar('wrong password', 'wrong password provided for that user');
    //     } else if (e.code == 'network-request-failed') {
    //       Get.snackbar(
    //           'Network error', 'please check your connection and try again');
    //     }
    //   }
    // }

    // try {
    //   //Validate form
    //   loginFormKey.currentState!.save();
    //   if (!loginFormKey.currentState!.validate()) {
    //     showFlushBar(
    //       message: 'Kindly fix validation issues',
    //     );
    //     return;
    //   }
    //   viewState = ViewState.busy;

    //   final loginDto = LoginDto(
    //     emailPhone: emailOrPhoneController.text,
    //     password: passwordController.text,
    //   );

    //   final res = await AuthApi().login(
    //     loginDto: loginDto,
    //   );

    //   if (res.success) {
    //     //store token
    //     await storageService.cacheAuthToken(
    //       res.payload['token'] as String,
    //     );

    //     //store user
    //     await storageService.cacheCustomer(
    //       jsonEncode(res.payload['user']),
    //     );

    //     unawaited(
    //       Get.offAllNamed<void>(
    //         Routes.app,
    //       ),
    //     );
    //     viewState = ViewState.idle;
    //   } else {
    //     showFlushBar(
    //       message: res.message ?? errorMessage,
    //     );
    //     viewState = ViewState.idle;
    //   }
    // } on SocketException catch (e, s) {
    //   print('SOCKETEXECPTION');
    //   log(
    //     e.toString(),
    //     stackTrace: s,
    //   );
    //   showFlushBar(
    //     message: errorMessage,
    //   );
    //   viewState = ViewState.idle;
    // } catch (e, s) {
    //   log(
    //     e.toString(),
    //     stackTrace: s,
    //   );
    //   showFlushBar(
    //     message: errorMessage,
    //   );
    //   viewState = ViewState.idle;
    // } finally {
    //   viewState = ViewState.idle;
    // }
  }

  void updateSelectedDate(DateTime newDate) {
    selectedDate.value = newDate;
  }

  void updateSelectedTime(TimeOfDay newTime) {
    selectedTime.value = newTime;
  }
}
