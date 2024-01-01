import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(
  //     const Duration(seconds: 3),
  //     () {
  //       navigate();
  //     },
  //   );
  // }

  // void navigate() async {
  //   final isLoggedIn = FirebaseAuth.instance.currentUser != null;
  //   if (isLoggedIn) {
  //     Navigator.pushReplacementNamed(context, Routes.pageView);
  //   } else {
  //     Navigator.pushReplacementNamed(context, Routes.signupScreen);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            y150,
            const Image(
              color: AppColors.primary,
              image: AssetImage("assets/icons/logo.png"),
              height: 200,
              width: 200,
            ),
            y10,
            const CircularProgressIndicator(color: AppColors.primary),
            y20,
            Text(
              'DigiKhata',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            y200,
            Text(
              'Developed By:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Nisa Fatima',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            y80,
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: AppColors.failure,
                      ),
                      x5,
                      Text(
                        'Made with love',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
