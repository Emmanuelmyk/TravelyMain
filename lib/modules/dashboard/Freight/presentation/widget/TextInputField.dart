import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../resources/colors.res.dart';
import '../../../../../resources/typograhy.res.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.w,
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: bodyMed,
          hintText: text,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: grayScale200)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: grayScale200)),
          suffixIcon: Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: grayScale300,
          ),
        ),
      ),
    );
  }
}
