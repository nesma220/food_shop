import 'package:flutter/material.dart';
import 'package:task_342/main.dart';

class buildBottomNaviBarWidget extends StatelessWidget {
  buildBottomNaviBarWidget({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  Function(int)? onTap;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: isDark ? Colors.black38 : Colors.white,
              spreadRadius: 4,
              blurRadius: 4),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: onTap,
          elevation: 0.0,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(currentIndex == 0
                      ? 'assets/images/bottomNavigationBar/Home.png'
                      : 'assets/images/bottomNavigationBar/Home1.png'),
                  color: currentIndex == 0
                      ? Colors.orange.shade800
                      : Colors.grey.shade900,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage(
                      'assets/images/bottomNavigationBar/fav.png'),
                  color: currentIndex == 1
                      ? Colors.orange.shade800
                      : Colors.grey.shade900,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(currentIndex == 2
                      ? 'assets/images/bottomNavigationBar/Buy1.png'
                      : 'assets/images/bottomNavigationBar/Stroke.png'),
                  //  color: currentIndex == 2 ? Colors.orange : Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(currentIndex == 3
                      ? 'assets/images/bottomNavigationBar/Profile_color.png'
                      : 'assets/images/bottomNavigationBar/Profile1.png'),
                  width: 28,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
