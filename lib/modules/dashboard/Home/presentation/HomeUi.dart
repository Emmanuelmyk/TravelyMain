import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travely/global_widgets/gap.ui.dart';
import 'package:travely/global_widgets/text.ui.dart';
import 'package:travely/modules/dashboard/Home/presentation/widgets/servicesContainer.dart';
import 'package:travely/resources/colors.res.dart';
import 'package:travely/resources/images.res.dart';
import 'package:travely/resources/res.dart';
import 'package:travely/resources/typograhy.res.dart';

import '../../../../Models/userDataModel.dart';
import '../controllers/homeController.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({Key? key});

  @override
  _HomeUiState createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final HomeController controller = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.fetchUserData();
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
            top: 170.h, // Adjust the top position as needed
            left: 0,
            right: 0,
            bottom: 0, // Adjust the bottom position as needed
            child: Container(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Content for Tab 1
                  Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            children: [
                              TextUi.bodyLBold(
                                'Our Haulage Services',
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Gap(16),
                        servicesContainer(
                          title: 'Heavy Duty Haulage ',
                          image: 'assets/png/flatbed.png',
                          ontap: controller.openFreightDetails,
                        ),
                        Gap(16),
                        servicesContainer(
                            title: 'Domestic Goods Haulage ',
                            image: 'assets/png/container.png',
                            ontap: controller.openFreightDetails),
                        Gap(16),
                        servicesContainer(
                            title: 'Tanker Haulage ',
                            image: 'assets/png/tanker.png',
                            ontap: controller.openFreightDetails)
                      ],
                    ),
                  ),

                  // Content for Tab 2
                  Center(child: TextUi.bodyLBold('hello')),
                ],
              ),
            ),
          ),
          Positioned(
            top: 170, // Adjust the top position as needed
            left: 0,
            right: 0,
            child: Container(
              height: 100, // Adjust the height as needed
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TabBar(
                          labelStyle: bodyNormBold,
                          labelColor:
                              blue500, // Set the selected tab text color
                          unselectedLabelColor: Colors.black,
                          indicatorWeight: 5,
                          controller: _tabController,
                          tabs: [
                            Tab(
                              icon: Image.asset(
                                'assets/png/truck.png',
                              ),
                              text: 'Haulage',
                            ),
                            Tab(
                                icon: Image.asset('assets/png/bus.png'),
                                text: 'Travel'),
                          ],
                        ),
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
                    Obx(() {
                      UserData? userData = controller.userData.value;
                      return Column(
                        children: [
                          TextUi.bodyNorm(
                            'Welcome,',
                            color: white,
                          ),
                          TextUi.bodyMedBold(
                            userData != null
                                ? userData.firstname ?? 'user'
                                : 'user',
                            color: white,
                          ),
                        ],
                      );
                    }),
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
