import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../global_widgets/text.ui.dart';
import '../../../../../resources/res.dart';

class itemButton extends StatelessWidget {
  const itemButton({
    required this.text,
    required this.ontap,
    this.onTruckTypeSelected,
    super.key,
  });
  final String text;
  final VoidCallback ontap;
  final VoidCallback? onTruckTypeSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 56.h,
          width: 358.w,
          decoration: BoxDecoration(
              border: Border.all(color: grayScale100),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextUi.bodySmall(text),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: grayScale300,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
