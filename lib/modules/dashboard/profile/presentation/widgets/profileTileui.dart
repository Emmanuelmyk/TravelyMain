import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../global_widgets/text.ui.dart';
import '../../../../../resources/colors.res.dart';
import '../../../../../resources/weights.res.dart';
import '../../controller/ProfileController.dart';

class ProfileTileUi extends GetView<ProfileController> {
  const ProfileTileUi({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final String icon;
  final String title;
  final VoidCallback? onTap;

  @override
  ProfileController get controller => Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
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
              child: SvgPicture.asset(
                icon,
                color: blue500,
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(width: 20),
            TextUi.bodySmall(
              color: grayScale900,
              title,
              height: 1.1,
              fontWeight: boldText,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: grayScale900,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
