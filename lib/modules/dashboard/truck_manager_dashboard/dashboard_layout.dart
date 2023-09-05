import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:travely/modules/dashboard/truck_manager_dashboard/Home/presentation/TruckManagerHomeUi.dart';
import 'package:travely/resources/colors.res.dart';

import '../../../resources/typograhy.res.dart';

class TruckManagerDashLayout extends StatefulWidget {
  TruckManagerDashLayout({super.key});

  @override
  State<TruckManagerDashLayout> createState() => _TruckManagerDashLayoutState();
}

class _TruckManagerDashLayoutState extends State<TruckManagerDashLayout> {
  int _selectedIndex = 0;
  static List<Widget> dashLayoutItems = <Widget>[
    const TruckManagerHomeUi(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dashLayoutItems.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        padding:
            const EdgeInsets.only(top: 20, bottom: 15, left: 25, right: 25),
        activeColor: blue500,
        tabBackgroundColor: blue500.withOpacity(0.1),
        selectedIndex: _selectedIndex,
        gap: 10,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        tabs: const [
          GButton(
            icon: LineIcons.home,
            text: 'Home',
            textStyle: bodySmall,
          ),
          GButton(
            icon: Icons.show_chart_outlined,
            text: 'Activity',
            textStyle: bodyNorm,
          ),
          GButton(
            icon: LineIcons.history,
            text: 'History',
            textStyle: bodySmall,
          ),
          GButton(
            icon: LineIcons.user,
            text: 'Profile',
            textStyle: bodySmall,
          ),
        ],
      ),
    );
  }
}
