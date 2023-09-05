import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travely/global_widgets/text.ui.dart';
import 'package:travely/resources/colors.res.dart';

import '../../../../global_widgets/button.ui.dart';
import '../../../../global_widgets/gap.ui.dart';
import '../../../../resources/typograhy.res.dart';

class ActivityUi extends StatelessWidget {
  const ActivityUi({super.key});

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
                    'Activity',
                    color: grayScale900,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                        Container(
                          height: 351.h,
                          decoration: const BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 17, left: 16, right: 16),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TextUi.bodyNormBold(
                                                        'Flatbed Truck(40ft) '),
                                                    TextUi.bodySmall(
                                                        'july 24- 3:00pm '),
                                                    TextUi.bodySmall(
                                                      'N800,000',
                                                      color: blue500,
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  height: 26.h,
                                                  width: 79.w,
                                                  decoration: BoxDecoration(
                                                      color: blue50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  child: Center(
                                                    child: TextUi.bodyXSmall(
                                                        'Awaiting offer'),
                                                  ),
                                                )
                                              ],
                                            ),
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
                        enableDrag: false);
                  },
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
                              TextUi.bodySmall('july 24- 3:00pm '),
                              TextUi.bodySmall(
                                'N800,000',
                                color: blue500,
                              ),
                            ],
                          ),
                          Container(
                            height: 26.h,
                            width: 79.w,
                            decoration: BoxDecoration(
                                color: blue50,
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: TextUi.bodyXSmall('Awaiting offer'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: GestureDetector(
                  onTap: () {
                    Get.bottomSheet(
                        Container(
                          height: 351.h,
                          decoration: const BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 17, left: 16, right: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            TextUi.bodyNormBold(
                                                'Tanker(50,000ltrs) '),
                                            TextUi.bodySmall(
                                                'july 24- 3:00pm '),
                                            TextUi.bodySmall(
                                              'N1,000,000',
                                              color: blue500,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 26.h,
                                          width: 79.w,
                                          decoration: BoxDecoration(
                                              color: blue50,
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: Center(
                                            child: TextUi.bodyXSmall(
                                                'Awaiting offer'),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        enableDrag: false);
                  },
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
                              TextUi.bodySmall('july 25- 8:07pm '),
                              TextUi.bodySmall(
                                'N1,000,000',
                                color: blue500,
                              ),
                            ],
                          ),
                          Container(
                            height: 26.h,
                            width: 79.w,
                            decoration: BoxDecoration(
                                color: blue50,
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: TextUi.bodyXSmall('Awaiting offer'),
                            ),
                          )
                        ],
                      ),
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
