import 'package:get/get.dart';

import '../modules/authentication/create_user_Ptofile/create_user.dart';
import '../modules/authentication/user_signin/number_verified.dart';
import '../modules/authentication/user_signin/phone_number.dart';
import '../modules/authentication/user_signin/verify_number.dart';
import '../modules/dashboard/Freight/presentation/freight.details.dart';
import '../modules/dashboard/Home/presentation/HomeUi.dart';

import '../modules/dashboard/profile/presentation/widgets/profileEdit.dart';
import '../modules/dashboard/truck_manager_dashboard/dashboard_layout.dart';
import '../modules/dashboard_layout.dart';
import '../modules/onboarding/onboarding.ui.dart';

// // import 'package:riilfit/src/modules/authentication/register/presentation/register.ui.dart';
// // import 'package:riilfit/src/modules/dashboard/gym/gym_details/presentation/gym_details.ui.dart';
// // import 'package:riilfit/src/modules/dashboard/gym/gyms_list/presentation/gym.ui.dart';
// // import 'package:riilfit/src/modules/dashboard/stores/presentation/stores.ui.dart';
// // import 'package:riilfit/src/modules/dashboard/train/presentation/train.ui.dart';
// // import 'package:riilfit/src/modules/dashboard/train/trainer_details/presentation/trainer.details.dart';
// // import 'package:riilfit/src/presentation/layouts/dashboard.layout.dart';
// // import 'package:riilfit/src/presentation/views.dart';
// // import 'package:riilfit/src/routing/guards/app_guard.dart';

// // import '../modules/authentication/login/presentation/gymOwnerLogin.ui.dart';
// // import '../modules/authentication/register/presentation/Gym_owner_Registration_ui.dart';
// // import '../modules/dashboard/gym/gym_locations/presentation/gym_locations.dart';
// // import '../modules/dashboard/gym/gym_membership_plans/presentation/gym_membership_plan_ui.dart';
// // import '../modules/dashboard/gym/gym_profile/presentation/gym_profile.dart';
// // import '../modules/dashboard/gym/gym_tag/presentation/gym_tag_ui.dart';
// // import '../modules/dashboard/role/choose_service/presentation/choose_role.dart';
// // import '../modules/dashboard/train/presentation/widgets/training_content_card.ui.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.onboarding;

  // static final unknownRoute = GetPage(
  //   name: Routes.page404,
  //   page: () => const UnknownPageUi(),
  // );

  static final pages = [
    GetPage(
      name: Routes.onboarding,
      page: () => OnboardingUi(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeUi(),
    ),
    GetPage(
      name: Routes.freightDetails,
      page: () => FreighDetails(),
    ),
    GetPage(
      name: Routes.dashLayout,
      page: () => dashLayout(),
    ),
    GetPage(
      name: Routes.profileEdit,
      page: () => profileEditUi(),
    ),
    GetPage(
      name: Routes.truckManagerDashLayout,
      page: () => TruckManagerDashLayout(),
    ),
    GetPage(
      name: Routes.phoneScreen,
      page: () => PhoneScreen(),
    ),
    GetPage(
      name: Routes.verifyScreen,
      page: () => VerifyScreen(),
    ),
    GetPage(
      name: Routes.verifiedScreen,
      page: () => VerifiedScreen(),
    ),
    GetPage(
      name: Routes.createUser,
      page: () => CreateUser(),
    ),
    // GetPage(
    //   name: Routes.login,
    //   page: () => const LoginUi(),
    // ),
    // GetPage(
    //   name: Routes.register,
    //   page: () => const RegisterUi(),
    // ),
    // GetPage(
    //   name: Routes.home,
    //   page: () => const HomeUi(),
    // ),
  ];
}
//     GetPage(
//       name: Routes.register,
//       page: () => const RegisterUi(),
//     ),
//     // GetPage(
//     //   name: Routes.forgotPasswordInit,
//     //   page: () => const ForgotPasswordEnterEmailUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.forgotPasswordEnterOtp,
//     //   page: () => const ForgotPasswordEnterResetOtpUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.forgotPasswordSetNewPassword,
//     //   page: () => const ForgotPasswordSetNewPasswordUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.verifyPhone,
//     //   page: () => const VerifyPhoneUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.app,
//     //   page: () => DashboardManager(),
//     // ),
//     // GetPage(
//     //   name: Routes.gym,
//     //   page: () => const GymUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.stores,
//     //   page: () => const StoresUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.train,
//     //   page: () => const TrainUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.gymDetails,
//     //   page: () => const GymDetailsUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.trainersDetails,
//     //   page: () => const TrainerDetailsUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.profile,
//     //   page: () => const ProfileUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.chooseRole,
//     //   page: () => const ChooseRole(),
//     // ),
//     // GetPage(
//     //   name: Routes.trainingContent,
//     //   page: () => TrainingContentCardUi(
//     //     workoutName: 'core Strength',
//     //   ),
//     // ),
//     // GetPage(
//     //   name: Routes.selectLocation,
//     //   page: () => const SelectLocation(),
//     // ),
//     // GetPage(
//     //   name: Routes.gymOwnerRegister,
//     //   page: () => const GymOwnerRegistrationUi(),
//     // ),
//     // GetPage(
//     //   name: Routes.gymProfile,
//     //   page: () => const GymProfile(),
//     // ),
//     // GetPage(
//     //   name: Routes.gymTag,
//     //   page: () => const GymTag(),
//     // ),
//     // GetPage(
//     //   name: Routes.gymPlan,
//     //   page: () => const GymMembershipPlans(),
//     // ),
//     // GetPage(
//     //   name: Routes.gymOwnerLogin,
//     //   page: () => const GymOwnerLoginUi(),
//     // ),
//   ];
// }
