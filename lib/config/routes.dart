import 'package:digi_khata/screens/nestedPageView/bill_book.dart';
import 'package:digi_khata/screens/nestedPageView/cash_book.dart';
import 'package:digi_khata/screens/home_tabs/collection.dart';
import 'package:digi_khata/screens/home_tabs/add_customer.dart';
import 'package:digi_khata/screens/home_tabs/home.dart';
import 'package:digi_khata/screens/money/money.dart';
import 'package:digi_khata/screens/more/business_detail.dart';
import 'package:digi_khata/screens/more/more.dart';
import 'package:digi_khata/screens/more/notifications.dart';
import 'package:digi_khata/screens/nestedPageView/nested_page_view.dart';
import 'package:digi_khata/screens/user_authentication/otp_screen.dart';
import 'package:digi_khata/screens/page_view.dart';
import 'package:digi_khata/screens/user_authentication/phone_screen.dart';
import 'package:digi_khata/screens/user_authentication/pin_lock_screen.dart';
import 'package:digi_khata/screens/nestedPageView/recycle_bin.dart';
import 'package:digi_khata/screens/user_authentication/sign_in.dart';
import 'package:digi_khata/screens/user_authentication/signup.dart';
import 'package:digi_khata/screens/user_authentication/splash_screen.dart';
import 'package:digi_khata/screens/nestedPageView/staff_book.dart';
import 'package:digi_khata/screens/nestedPageView/stock_book.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashScreen = 'splashScreen';
  static const String signUp = 'signUp';
  static const String signIn = 'signIn';
  static const String phoneScreen = 'phoneScreen';
  static const String otp = 'otp';
  static const String pinLock = 'pinLock';
  static const String pagevieew = 'pagevieew';
  static const String nestedPageView = 'nestedPageView';
  static const String home = 'home';
  static const String money = 'money';
  static const String more = 'more';
  static const String businessDetail = 'businessDetail';
  static const String notifications = 'notifications';
  static const String addCustomer = 'addCustomer';
  static const String addSupplier = 'addSupplier';
  static const String addBank = 'addBank';
  static const String collection = 'collection';
  static const String cashBook = 'cashBook';
  static const String billBook = 'billBook';
  static const String stockBook = 'stockBook';
  static const String staffBook = 'staffBook';
  static const String recycleBin = 'recycleBin';

  MaterialPageRoute<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case signUp:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case signIn:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
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
      case nestedPageView:
        return MaterialPageRoute(builder: (context) => const NestedPageView());
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
      case addCustomer:
        return MaterialPageRoute(builder: (context) => const AddCustomer());
      case addSupplier:
        return MaterialPageRoute(builder: (context) => const AddCustomer());
      case addBank:
        return MaterialPageRoute(builder: (context) => const AddCustomer());
      case collection:
        return MaterialPageRoute(builder: (context) => const Collection());
      case cashBook:
        return MaterialPageRoute(builder: (context) => const CashBook());
      case billBook:
        return MaterialPageRoute(builder: (context) => const BillBook());
      case stockBook:
        return MaterialPageRoute(builder: (context) => const StockBook());
      case staffBook:
        return MaterialPageRoute(builder: (context) => const StaffBook());
      case recycleBin:
        return MaterialPageRoute(builder: (context) => const RecycleBin());
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
