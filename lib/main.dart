import 'package:digi_khata/config/routes.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/theme/themeing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primary,
    // statusBarIconBrightness: Brightness.dark,
    // systemNavigationBarColor: Colors.white,
    // systemNavigationBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const DigiKhata());
}

class DigiKhata extends StatelessWidget {
  const DigiKhata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DigiKhata',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes().generateRoute,
      // initialRoute: Routes.splashScreen,
    );
  }
}
