import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travely/global_widgets/text.ui.dart';
import 'package:travely/resources/colors.res.dart';

class HistoryUi extends StatelessWidget {
  const HistoryUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16),
          child: Column(
            children: [
              Row(
                children: [
                  TextUi.headingBold5(
                    'History',
                    color: grayScale900,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  height: 140.h,
                  width: 358.w,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: grayScale200),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 17, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextUi.bodyNormBold('Flatbed Truck(40ft) '),
                            TextUi.bodySmall('july 24- 3:00pm ')
                          ],
                        ),
                        Container(
                          height: 26.h,
                          width: 79.w,
                          decoration: BoxDecoration(
                              color: blue50,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: TextUi.bodySmall('completed'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  height: 140.h,
                  width: 358.w,
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: grayScale200),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 17, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextUi.bodyNormBold('Tanker (50,000ltrs) '),
                            TextUi.bodyXSmall('july 25- 8:07pm ')
                          ],
                        ),
                        Container(
                          height: 26.h,
                          width: 79.w,
                          decoration: BoxDecoration(
                              color: blue50,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: TextUi.bodyXSmall('completed'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
