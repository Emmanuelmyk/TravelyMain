import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:travely/resources/colors.res.dart';

import '../resources/typograhy.res.dart';
import 'dashboard/Activity/presentation/activity.dart';
import 'dashboard/History/presentation/Histroy.dart';
import 'dashboard/Home/presentation/HomeUi.dart';
import 'dashboard/profile/presentation/profileUi.dart';

class dashLayout extends StatefulWidget {
  dashLayout({super.key});

  @override
  State<dashLayout> createState() => _dashLayoutState();
}

class _dashLayoutState extends State<dashLayout> {
  int _selectedIndex = 0;
  static List<Widget> dashLayoutItems = <Widget>[
    const HomeUi(),
    ActivityUi(),
    HistoryUi(),
    ProfileUi(),
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
