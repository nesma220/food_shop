import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:task_342/main.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  BaseAppBar({super.key, required this.appBar});

  final AppBar appBar;
  // final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: InkWell(
        onTap: () => ZoomDrawer.of(context)?.toggle(),
        //
        child: const Image(
          image: AssetImage('assets/icons/menu.png'),
        ),
      ),
      title: const Text(
        '15/2 New Texas',
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
      ),
      actions: [
        Image.asset(
          'assets/icons/Notification.png',
          color: Colors.grey,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
