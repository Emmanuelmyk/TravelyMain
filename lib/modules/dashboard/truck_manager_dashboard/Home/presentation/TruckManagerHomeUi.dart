import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:travely/global_widgets/gap.ui.dart';
import 'package:travely/global_widgets/text.ui.dart';
import 'package:travely/modules/dashboard/truck_manager_dashboard/Home/presentation/widgets/servicesContainer.dart';

import 'package:travely/resources/colors.res.dart';
import 'package:travely/resources/images.res.dart';
import 'package:travely/resources/res.dart';
import 'package:travely/resources/typograhy.res.dart';

import '../controllers/homeController.dart';

class TruckManagerHomeUi extends StatefulWidget {
  const TruckManagerHomeUi({Key? key});

  @override
  _TruckManagerHomeUiState createState() => _TruckManagerHomeUiState();
}

class _TruckManagerHomeUiState extends State<TruckManagerHomeUi>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TruckManagerHomeController controller =
      Get.find<TruckManagerHomeController>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2, // Define the number of tabs
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  blue500, // Top quarter is blue
                  blue500, // Top quarter is blue
                  Colors.white, // Bottom three-quarters are white
                  Colors.white, // Bottom three-quarters are white
                ],
                stops: [0.0, 0.30, 0.30, 1.0],
              ),
            ),
          ),
          Positioned(
            top: 270.h, // Adjust the top position as needed
            left: 0,
            right: 0,
            bottom: 0, // Adjust the bottom position as needed
            child: ClipRect(
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUi.bodyLBold(
                                'Truck Fleets',
                                color: Colors.black,
                              ),
                              Icon(
                                LineIcons.filter,
                              )
                            ],
                          ),
                        ),
                        Gap(16),
                        servicesContainer(
                            title: 'Mercedese Benz',
                            image: 'assets/png/trucks.png',
                            ontap: () {}),
                        servicesContainer(
                            title: 'Mercedese Benz',
                            image: 'assets/png/trucks.png',
                            ontap: () {}),
                        servicesContainer(
                            title: 'Mercedese Benz',
                            image: 'assets/png/trucks.png',
                            ontap: () {}),
                        servicesContainer(
                            title: 'Mercedese Benz',
                            image: 'assets/png/trucks.png',
                            ontap: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 170, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: Container(
              width: 358,
              height: 67, // Adjust the height as needed
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 380,
                          child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide:
                                        BorderSide(color: grayScale200)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide:
                                        BorderSide(color: grayScale200)),
                                hintText: 'search for truck',
                                prefixIcon: Icon(LineIcons.search)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TextUi.bodyNorm(
                          'Welcome,',
                          color: white,
                        ),
                        TextUi.bodyMedBold(
                          'Oluwatobi',
                          color: white,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: white),
                          shape: BoxShape.circle),
                      child: Image.asset(
                        trainer4,
                        height: 55,
                        width: 55,
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
