import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:travely/global_widgets/text.ui.dart';
import 'package:travely/modules/dashboard/profile/presentation/widgets/profileEdit.dart';
import 'package:travely/modules/dashboard/profile/presentation/widgets/profileTileui.dart';
import 'package:travely/resources/colors.res.dart';
import 'package:travely/routing/app_pages.dart';

import '../../../../global_widgets/gap.ui.dart';
import '../../../../resources/icons.res.dart';
import '../../../../resources/weights.res.dart';
import '../../../authentication/user_signin/controller/user.signinController.dart';
import '../controller/ProfileController.dart';

class ProfileUi extends StatelessWidget {
  ProfileUi({super.key});
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    TextUi.headingBold5(
                      'Profile',
                      color: grayScale900,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 100.h,
                            width: 100.w,
                            child: CircleAvatar(
                              child: Image.asset(
                                'assets/png/profilePlaceHolder.png',
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 2,
                            right: 2,
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.profileEdit);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: blue50),
                                child: Icon(
                                  LineIcons.pen,
                                  color: blue400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [TextUi.headingBold5('Oluwatobi Ayokunmi')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [TextUi.bodyLarge('tobiakinnuli@gmail.com')],
                ),
                const Gap(40),
                const ProfileTileUi(
                  icon: mailIcon,
                  title: 'Help and Support',
                ),
                const Gap(29),
                const ProfileTileUi(
                  icon: aboutIcon,
                  title: 'Terms and Condition',
                ),
                const Gap(29),
                ProfileTileUi(
                  icon: exitIcon,
                  title: 'Logout',
                  onTap: () {
                    controller.signout();
                  },
                ),
                const Gap(29),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 0,
                    ),
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        SizedBox.square(
                            dimension: 24,
                            child: Icon(
                              LineIcons.trash,
                              color: error,
                            )),
                        const SizedBox(width: 20),
                        TextUi.bodySmall(
                          'Delete Account',
                          height: 1.1,
                          fontWeight: boldText,
                          color: error,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
