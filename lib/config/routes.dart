import 'package:digi_khata/screens/home.dart';
import 'package:digi_khata/screens/money.dart';
import 'package:digi_khata/screens/more/business_detail.dart';
import 'package:digi_khata/screens/more/more.dart';
import 'package:digi_khata/screens/more/notifications.dart';
import 'package:digi_khata/screens/otp_screen.dart';
import 'package:digi_khata/screens/page_view.dart';
import 'package:digi_khata/screens/phone_screen.dart';
import 'package:digi_khata/screens/pin_lock_screen.dart';
import 'package:digi_khata/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashScreen = 'splashScreen';
  static const String phoneScreen = 'phoneScreen';
  static const String otp = 'otp';
  static const String pinLock = 'pinLock';
  static const String pagevieew = 'pagevieew';
  static const String home = 'home';
  static const String money = 'money';
  static const String more = 'more';
  static const String businessDetail = 'businessDetail';
  static const String notifications = 'notifications';
  // static const String  = '';
  // static const String  = '';
  // static const String  = '';
  // static const String  = '';

  MaterialPageRoute<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case phoneScreen:
        return MaterialPageRoute(builder: (context) => const PhoneScreen());
      case otp:
        return MaterialPageRoute(
          builder: (context) =>
              Otp(verificationId: routeSettings.arguments.toString()),
        );
      case pinLock:
        return MaterialPageRoute(builder: (context) => const PinLock());
      case pagevieew:
        return MaterialPageRoute(builder: (context) => const PageVieew());
      case home:
        return MaterialPageRoute(builder: (context) => const Home());
      case money:
        return MaterialPageRoute(builder: (context) => const Money());
      case more:
        return MaterialPageRoute(builder: (context) => const More());
      case businessDetail:
        return MaterialPageRoute(builder: (context) => const BusinessDetail());
      case notifications:
        return MaterialPageRoute(builder: (context) => const Notifications());
      default:
        return MaterialPageRoute(builder: (context) => const PageVieew ());
    }
  }
}
