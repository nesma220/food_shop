import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task_342/controller/shared/sharedPref.dart';
import 'package:task_342/main.dart';
import 'package:task_342/view/widgets/commoned/path/path_image.dart';
import 'package:task_342/routes/app_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? route;
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        //   String route = SharedPrefController().loggedIn ?'/Layout':'Login';

        if (initScreen == 0 || initScreen == null) {
          navigatorPushReplac(context, '/OnBoarding');
        } else if (SharedPrefController().loggedIn == false) {
          navigatorPushReplac(context, '/Login');
        } else {
          navigatorPushReplac(context, '/Layout');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              PahtImage.logo,
              height: 130,
              width: 104,
            ),
          ],
        ),
      ),
    );
  }
}
