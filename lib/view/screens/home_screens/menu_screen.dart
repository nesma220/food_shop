import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:task_342/routes/app_router.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 2, top: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: ClipOval(
                child: Image.asset(
                  'assets/images/bottomImage/circle.png',
                  width: 51,
                  height: 91,
                  fit: BoxFit.cover,
                ),
              ),
              title: Column(
                children: const [
                  Text(
                    'Alex Nikiforov',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Fashion Designer',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {
                  ZoomDrawer.of(context)!.close();
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ),
            const SizedBox(height: 31),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      navigatorPush(context, '/FavScreen');
                      //  AppRouter.goTo(screenName: '/FavScreen');
                    },
                    child: ListTile(
                      leading:
                          Image.asset('assets/images/bottomImage/fav1.png'),
                      title: const Text(
                        'My favorites',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigatorPush(context, '/Wallets');
                      //   AppRouter.goTo(screenName: '/Wallets');
                    },
                    child: ListTile(
                      leading:
                          Image.asset('assets/images/bottomImage/Drawer2.png'),
                      title: const Text('Wallets',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigatorPush(context, '/Order');
                      //   AppRouter.goTo(screenName: '/Order');
                    },
                    child: ListTile(
                      leading:
                          Image.asset('assets/images/bottomImage/Drawer2.png'),
                      title: const Text('My orders',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  ListTile(
                    leading:
                        Image.asset('assets/images/bottomImage/Drawer3.png'),
                    title: const Text('About us',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  ListTile(
                    leading:
                        Image.asset('assets/images/bottomImage/Drawer4.png'),
                    title: const Text('Privacy policy',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  InkWell(
                    onTap: () {
                      navigatorPush(context, '/Settings');
                      //    AppRouter.goTo(screenName: '/Settings');
                    },
                    child: ListTile(
                      leading:
                          Image.asset('assets/images/bottomImage/Drawer6.png'),
                      title: const Text('Settings',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/bottomImage/logOut.png'),
              title: const Text(
                'Log Out',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 105),
            ListTile(
              leading: Image.asset('assets/images/onBoardingImage/Vector.png'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

// DrawerWidget() {

// }
