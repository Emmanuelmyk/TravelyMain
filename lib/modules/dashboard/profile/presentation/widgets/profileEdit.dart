import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_icons/line_icons.dart';
import 'package:travely/global_widgets/appbar.ui.dart';

import '../../../../../global_widgets/gap.ui.dart';
import '../../../../../global_widgets/text.ui.dart';
import '../../../../../resources/colors.res.dart';
import '../../../../../routing/app_pages.dart';

class profileEditUi extends StatelessWidget {
  const profileEditUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbarUi(
        backgroundColor: white,
        title: Row(
          children: [
            TextUi.heading5(
              'Edit Profile',
              fontWeight: FontWeight.bold,
              color: grayScale900,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
          child: Column(
            children: [
              Gap(32),
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
              Gap(32),
              userInputField(
                color: grayScale50,
                text: 'Oluwatobi',
                textColor: grayScale100,
              ),
              Gap(32),
              userInputField(
                color: grayScale50,
                text: 'Ayokunmi',
                textColor: grayScale100,
              ),
              Gap(32),
              userInputField(
                color: grayScale100,
                text: 'tobiakinnuli@gmail.com',
                textColor: grayScale900,
              ),
              Gap(32),
              userInputField(
                color: grayScale100,
                text: '08142351672',
                textColor: grayScale900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class userInputField extends StatelessWidget {
  const userInputField({
    required this.text,
    required this.color,
    required this.textColor,
    super.key,
  });
  final String text;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 358,
          padding: const EdgeInsets.only(
            top: 16,
            left: 16.23,
            right: 9,
            bottom: 16,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.75, color: color),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextUi.bodyNorm(
                text,
                color: textColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
