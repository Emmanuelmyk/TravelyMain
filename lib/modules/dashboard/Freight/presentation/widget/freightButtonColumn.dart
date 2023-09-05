import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:travely/resources/res.dart';

import '../../../../../global_widgets/button.ui.dart';
import '../../../../../global_widgets/gap.ui.dart';
import '../../../../../global_widgets/text.ui.dart';
import '../../../../../resources/colors.res.dart';
import '../../controller/freightDetailController.dart';
import 'TextInputField.dart';
import 'itemButton.dart';

class freightButtonsColumn extends StatelessWidget {
  freightButtonsColumn({
    super.key,
  });

  final controller = Get.put(FreightDetailController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                                const TextUi.bodyMedBold('Pickup Location'),
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
                          TextInputField(
                            text: 'City',
                          ),
                          Gap(16),
                          TextInputField(
                            text: 'Address and Street',
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
          text: 'Pickup Location',
        ),
        //drop off location itemn button
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
                                const TextUi.bodyMedBold('Drop off-Location'),
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
                          TextInputField(
                            text: 'City',
                          ),
                          Gap(16),
                          TextInputField(
                            text: 'Address and Street',
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
          text: 'Drop off Location',
        ),

        //cargo description item button
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
                                const TextUi.bodyMedBold('Cargo Description'),
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
                          SizedBox(
                              width: 358.w,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText:
                                        'Provide more details for example: Two Toyota Camry, colour blue.',
                                    hintStyle: bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: grayScale200),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)))),
                                maxLines: 5,
                              )),
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
          text: 'Description of cargo',
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
                                const TextUi.bodyMedBold('Truck Type'),
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
                          ListTile(
                            title: TextUi.bodySmallBold('cover'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('open'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('Flatbed'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('2x Flatbed'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('Tipper'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('Box'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('Train'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('Tanker'),
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
          text: 'Truck Type',
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
                                const TextUi.bodyMedBold('Cargo Weight'),
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
                          ListTile(
                            title: TextUi.bodySmallBold('40 ft container'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('20 ft container'),
                          ),
                          ListTile(
                            title:
                                TextUi.bodySmallBold('20*2 double container '),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('500 kg'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('700 kg'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('1000 kg'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('others'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('33,000 ltrs'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('45,000 ltrs'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('50,000 ltrs'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('20 tons'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('30 tons'),
                          ),
                          ListTile(
                            title: TextUi.bodySmallBold('50 tons'),
                          ),
                          SizedBox(
                              width: 358.w,
                              height: 48.h,
                              child: PrimaryButtonUi(text: 'Done')),
                          Gap(20),
                        ],
                      ),
                    ),
                  ),
                ),
                enableDrag: false);
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
                          Obx(
                            () => GestureDetector(
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
                                  text: controller.selectedDate != null
                                      ? DateFormat('yyyy-MM-dd')
                                          .format(controller.selectedDate.value)
                                      : 'Date',
                                )),
                          ),
                          Gap(16),
                          Obx(
                            () => GestureDetector(
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
