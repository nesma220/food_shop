import 'package:flutter/material.dart';
import 'package:task_342/routes/app_router.dart';
import 'package:task_342/routes/name_screen.dart';
import 'package:task_342/view/screens/auth/login_screen.dart';
import 'package:task_342/view/screens/auth/onBording_screen.dart';
import 'package:task_342/view/screens/auth/sign_up_Screen.dart';
import 'package:task_342/view/screens/auth/splash_screen.dart';
import 'package:task_342/view/screens/bottom_screen.dart/fav_screen.dart';
import 'package:task_342/view/screens/home_screens/cart_screen.dart';
import 'package:task_342/view/screens/home_screens/checkout_screen.dart';
import 'package:task_342/view/screens/home_screens/home_screen.dart';
import 'package:task_342/view/screens/home_screens/order_screen.dart';
import 'package:task_342/view/screens/home_screens/payment_screen.dart';
import 'package:task_342/view/screens/home_screens/search_screen.dart';
import 'package:task_342/view/screens/home_screens/settings_screen.dart';
import 'package:task_342/view/screens/home_screens/wallets_screen.dart';
import 'package:task_342/view/widgets/homeWidget/layout_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreenName.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case ScreenName.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case ScreenName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case ScreenName.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case ScreenName.singnUp:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      case ScreenName.checkOutScreen:
        return MaterialPageRoute(builder: (context) => const CheckoutScreen());
      case ScreenName.searchScreen:
        return MaterialPageRoute(builder: (context) => const SearchScreen());
      case ScreenName.paymentScreen:
        return MaterialPageRoute(builder: (context) => const PaymentScreen());
      case ScreenName.layout:
        return MaterialPageRoute(builder: (context) => const LayoutScreen());
      case ScreenName.walletsScreen:
        return MaterialPageRoute(builder: (context) => WalletsScreen());
      case ScreenName.orderScreen:
        return MaterialPageRoute(builder: (context) => OrderScreen());
      case ScreenName.favScrren:
        return MaterialPageRoute(builder: (context) => FavScreen());
      case ScreenName.settings:
        return MaterialPageRoute(builder: (context) => SettingsScreen());
      case ScreenName.cartScreen:
        return MaterialPageRoute(builder: (context) => const CartScreen());
      default:
        return MaterialPageRoute(builder: (context) => const LayoutScreen());
    }
  }
}
