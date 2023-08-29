import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travely/global_widgets/text.ui.dart';

import '../resources/images.res.dart';
import '../resources/weights.res.dart';
import 'auth_back_button.ui.dart';

class AuthAppbarUi extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppbarUi({
    super.key,
    this.actions,
  });

  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 64,
      leading: const AuthBackButtonUi(),
      actions: actions,
      centerTitle: true,
      title: Image.asset(
        onestopFashionLogoPng,
        height: 28.h,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MainAppbarUi extends StatelessWidget implements PreferredSizeWidget {
  const MainAppbarUi({
    super.key,
    this.actions,
    required this.title,
    this.showBackButton = true,
    this.backgroundColor,
    this.iconColor,
    this.iconBackgroundColor,
    this.bottom,
  });

  final List<Widget>? actions;
  final String title;
  final bool showBackButton;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final PreferredSizeWidget? bottom;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      leadingWidth: 64,
      bottom: bottom,
      leading: showBackButton
          ? AuthBackButtonUi(
              size: 24,
              iconColor: iconColor,
              backgroundColor: iconBackgroundColor,
            )
          : const SizedBox.shrink(),
      actions: actions,
      centerTitle: true,
      title: TextUi.bodyLarge(
        title,
        fontWeight: semiBoldText,
      ),
    );
  }

  //get height of bottom widget
  double get heightOfBottomWidget {
    if (bottom == null) return 0;
    return bottom!.preferredSize.height;
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + heightOfBottomWidget);
}
