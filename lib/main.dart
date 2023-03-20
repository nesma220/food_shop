// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_342/controller/shared/sharedPref.dart';
import 'package:task_342/view/screens/auth/login_screen.dart';
import 'package:task_342/view/screens/auth/onBording_screen.dart';
import 'package:task_342/view/screens/bottom_screen.dart/profile_screen.dart';
import 'package:task_342/view/screens/home_screens/checkout_screen.dart';
import 'package:task_342/view/screens/home_screens/home_screen.dart';
import 'package:task_342/view/screens/auth/splash_screen.dart';
import 'package:task_342/view/screens/home_screens/order_screen.dart';
import 'package:task_342/view/screens/home_screens/payment_screen.dart';
import 'package:task_342/view/widgets/homeWidget/BaseAppBar.dart';
import 'view/screens/home_screens/menu_screen.dart';
import 'view/screens/home_screens/wallets_screen.dart';
import 'routes/navigator.dart';
import 'view/widgets/homeWidget/layout_screen.dart';

int initScreen = 0;
bool isDark = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharedPref();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt('initScreen') ?? 0;
  await preferences.setInt('initScreen', 1);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: isDark ? Colors.black : Colors.white,
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode, //
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,

      initialRoute: '/Splash',
      // home: OnBoardingScreen(),
    );
  }

  void changeTheme(themeMode) {
    setState(() {
      _themeMode = themeMode;
      isDark = !isDark;
    });
  }
}
