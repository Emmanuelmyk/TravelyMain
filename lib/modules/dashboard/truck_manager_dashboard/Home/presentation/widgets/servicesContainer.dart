import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travely/global_widgets/text.ui.dart';

import '../../../../../../resources/colors.res.dart';

class servicesContainer extends StatelessWidget {
  servicesContainer({
    required this.title,
    required this.image,
    required this.ontap,
    super.key,
  });
  final String title;
  final String image;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 234.h,
        width: 358.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Column(
              children: [
                // Image.asset(image),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextUi.bodySmallBold(title),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
