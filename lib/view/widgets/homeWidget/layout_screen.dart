import 'package:flutter/material.dart';
import 'package:task_342/view/screens/bottom_screen.dart/fav_screen.dart';
import 'package:task_342/view/screens/bottom_screen.dart/profile_screen.dart';
import 'package:task_342/view/screens/home_screens/drawar_screen.dart';
import 'package:task_342/view/screens/home_screens/order_screen.dart';
import 'package:task_342/view/widgets/homeWidget/bottomNavWidget.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    DrawerScreen(),
    const FavScreen(),
    OrderScreen(),
    const ProFileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[selectedIndex],
      bottomNavigationBar: buildBottomNaviBarWidget(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
