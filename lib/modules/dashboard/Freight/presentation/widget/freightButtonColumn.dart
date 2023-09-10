import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:travely/enum.dart';
import 'package:travely/resources/res.dart';

import '../../../../../global_widgets/button.ui.dart';
import '../../../../../global_widgets/gap.ui.dart';
import '../../../../../global_widgets/text.ui.dart';
import '../../../../../resources/colors.res.dart';
import '../../../Home/controllers/homeController.dart';
import '../../controller/freightDetailController.dart';
import 'TextInputField.dart';
import 'itemButton.dart';

class freightButtonsColumn extends StatelessWidget {
  freightButtonsColumn({
    super.key,
  });

  final controller = Get.put(FreightDetailController());

  void showBottomSheet(String title, String description,
      String SecondDescription, String cargoDes, List<Widget> listTiles) {
    Get.bottomSheet(
      Container(
        height: 351.h,
        decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextUi.bodyMedBold(title),
                      const Gap(82),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: grayScale50,
                        ),
                        child: const Center(
                          child: Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                ),
                if (description.isNotEmpty && SecondDescription.isNotEmpty)
                  Column(
                    children: [
                      TextInputField(
                        text: description,
                      ),
                      Gap(16),
                      TextInputField(
                        text: SecondDescription,
                      ),
                      Gap(32),
                    ],
                  )
                else if (cargoDes.isNotEmpty)
                  TextFormField(
                    decoration: InputDecoration(
                        hintText:
                            'Provide more details for example: Two Toyota Camry, colour blue.',
                        hintStyle: bodySmall,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: grayScale200),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16)))),
                    maxLines: 5,
                  )
                else
                  const SizedBox(),
                const Gap(32),
                Column(children: listTiles),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
      enableDrag: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedServiceType = Get.find<HomeController>().selectedService;
    final selectedTruckType = controller.selectedTruck.value;

    return Column(
      children: [
        itemButton(
          ontap: () {
            showBottomSheet(
                'Pickup Location', 'City', 'Address and Street', "", []);
          },
          text: 'Pickup Location',
        ),
        // drop off location itemn button
        itemButton(
          ontap: () {
            showBottomSheet(
                'Drop off-Location', 'City', 'Address and Street', '', []);
          },
          text: 'Drop off Location',
        ),
        // cargo description item button
        itemButton(
          ontap: () {
            showBottomSheet(
                'Cargo Description',
                '',
                '',
                'Provide more details for example: Two Toyota Camry, colour blue.',
                []);
          },
          text: 'Description of cargo',
        ),
        // Truck Type item button
        itemButton(
          ontap: () {
            if (selectedServiceType == ServiceType.HeavyDutyHaulage) {
              showBottomSheet('Truck Type', '', '', '', [
                ListTIles(
                  ontap: () {
                    controller.setSelectedTruckType(TruckType.flatbed);
                  },
                  title: 'flatbed',
                ),
                ListTIles(
                  ontap: () {
                    controller.setSelectedTruckType(TruckType.twoxFlatBed);
                  },
                  title: '2X flatbed',
                ),
                ListTIles(
                  ontap: () {
                    controller.setSelectedTruckType(TruckType.tipper);

                    print(selectedTruckType);
                  },
                  title: 'tipper',
                ),
              ]);
            } else if (selectedServiceType ==
                ServiceType.DomesticGoodsHaulage) {
              showBottomSheet('Truck Type', '', '', '', [
                ListTIles(
                  ontap: () {
                    controller.setSelectedTruckType(TruckType.covered);
                  },
                  title: 'Cover',
                ),
                ListTIles(
                  ontap: () {
                    controller.setSelectedTruckType(TruckType.open);
                  },
                  title: 'Open',
                ),
                ListTIles(
                  ontap: () {
                    controller.setSelectedTruckType(TruckType.box);
                  },
                  title: 'Box',
                ),
              ]);
            } else if (selectedServiceType == ServiceType.TankerHaulage) {
              showBottomSheet('Truck Type', '', '', '', [
                ListTIles(
                  ontap: () {
                    controller.setSelectedTruckType(TruckType.Tanker);
                  },
                  title: 'tanker',
                ),
              ]);
            }
          },
          text: 'Truck Type',
        ),
        // Cargo Weight item button
        itemButton(
          ontap: () {
            if (selectedTruckType == TruckType.Tanker) {
              showBottomSheet('Cargo Weight', '', '', '', [
                ListTIles(
                  ontap: () {},
                  title: '33,000 ltrs',
                ),
                ListTIles(
                  ontap: () {},
                  title: '45,000 ltrs',
                ),
                ListTIles(
                  ontap: () {},
                  title: '50,000 ltrs',
                ),
              ]);
            } else if (selectedTruckType == TruckType.twoxFlatBed) {
              showBottomSheet('Cargo Weight', '', '', '', [
                ListTIles(
                  ontap: () {},
                  title: '20 tons',
                ),
                ListTIles(
                  ontap: () {},
                  title: '30 tons',
                ),
                ListTIles(
                  ontap: () {},
                  title: '50 tons',
                ),
              ]);
            } else if (selectedTruckType == TruckType.tipper) {
              showBottomSheet('Cargo Weight', '', '', '', [
                ListTIles(
                  ontap: () {},
                  title: '20 tons',
                ),
                ListTIles(
                  ontap: () {},
                  title: '30 tons',
                ),
                ListTIles(
                  ontap: () {},
                  title: '50 tons',
                ),
              ]);
            }
          },
          text: 'Cargo weight',
        ),

        itemButton(
          ontap: () {
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
                            padding: const EdgeInsets.only(right: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const TextUi.bodyMedBold('date and time'),
                                const Gap(82),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: grayScale50,
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.close),
                                  ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                              onTap: () async {
                                final selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: controller.selectedDate.value,
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(DateTime.now().year + 1),
                                );

                                if (selectedDate != null) {
                                  controller.updateSelectedDate(selectedDate);
                                }
                              },
                              child: dateTimePicker(
                                text: 'Date',
                              )),
                          Gap(16),
                          GestureDetector(
                            onTap: () async {
                              final selectedTime = await showTimePicker(
                                context: context,
                                initialTime: controller.selectedTime.value,
                              );

                              if (selectedTime != null) {
                                controller.updateSelectedTime(selectedTime);
                              }
                            },
                            child: dateTimePicker(
                              text: controller.selectedTime != null
                                  ? controller.selectedTime.value
                                      .format(context)
                                  : 'Time',
                            ),
                          ),
                          Gap(32),
                          SizedBox(
                              width: 358.w,
                              height: 48.h,
                              child: PrimaryButtonUi(text: 'Done'))
                        ],
                      ),
                    ),
                  ),
                ),
                enableDrag: false);
          },
          text: 'Date and time',
        ),
      ],
    );
  }
}

class ListTIles extends StatelessWidget {
  const ListTIles({
    required this.ontap,
    required this.title,
    super.key,
  });
  final VoidCallback ontap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        highlightColor: blue500,
        onTap: ontap ?? () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 20,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            children: [
              const SizedBox(width: 20),
              TextUi.bodyMedBold(
                title,
                height: 1.1,
                fontWeight: mediumText,
              ),
              // Spacer(),
              // Icon(
              //   CupertinoIcons.arrow_down,
              //   color: grayScale900,
              //   size: 16,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class dateTimePicker extends StatelessWidget {
  const dateTimePicker({
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
          enabled: false,
          hintStyle: bodyMed,
          hintText: text,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: grayScale200)),
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
