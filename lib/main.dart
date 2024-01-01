import 'package:digi_khata/config/routes.dart';
import 'package:digi_khata/theme/themeing.dart';
import 'package:flutter/material.dart';

void main() {
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
