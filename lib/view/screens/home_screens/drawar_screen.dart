import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:task_342/view/screens/home_screens/home_screen.dart';
import 'package:task_342/view/screens/home_screens/menu_screen.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({super.key});
  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      //  borderRadius: 50,
      // style: DrawerStyle.defaultStyle,
      openCurve: Curves.fastOutSlowIn,
      borderRadius: 24.0,
      showShadow: false,
      angle: 0.0,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.65,

      menuScreen: const MenuScreen(),
      mainScreen: const HomeScreen(),
    );
  }
}
