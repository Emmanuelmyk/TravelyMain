import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../resources/colors.res.dart';

class addImageContainer extends StatelessWidget {
  const addImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.h,
      width: 108.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: grayScale50),
      child: const Center(
        child: Icon(Icons.add),
      ),
    );
  }
}
