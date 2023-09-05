import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travely/global_widgets/appbar.ui.dart';
import 'package:travely/global_widgets/button.ui.dart';
import 'package:travely/global_widgets/text.ui.dart';
import 'package:travely/modules/dashboard/Freight/presentation/widget/freightButtonColumn.dart';
import 'package:travely/resources/colors.res.dart';
import 'package:travely/resources/typograhy.res.dart';

import '../../../../global_widgets/gap.ui.dart';
import '../controller/freightDetailController.dart';
import 'widget/addImageButton.dart';
import 'widget/itemButton.dart';

class FreighDetails extends StatelessWidget {
  FreighDetails({super.key});
  final controller = Get.put(FreightDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const MainAppbarUi(
        title: TextUi.bodyMedBold(
          'Freight Details',
          color: grayScale900,
        ),
        backgroundColor: white,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
        child: Column(
          children: [
            freightButtonsColumn(),
            const Padding(
              padding: EdgeInsets.only(left: 0, bottom: 8),
              child: Row(
                children: [
                  TextUi.bodyMed(
                    'Picture of Cargo',
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
            ),
            const Row(
              children: [
                addImageContainer(),
                Gap(17),
                addImageContainer(),
                Gap(17),
                addImageContainer(),
              ],
            ),
            const Gap(47),
            PrimaryButtonUi(
              text: 'Get Quote',
              textColor: grayScale400,
            ),
            const Gap(48),
          ],
        ),
      )),
    );
  }
}
