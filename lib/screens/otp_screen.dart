import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Otp extends StatefulWidget {
  const Otp({super.key, required this.verificationId});
  final String verificationId;
  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  OtpFieldController otpController = OtpFieldController();
  String? pincode;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int? _resendToken;

    // void resendOTP(String phoneNumber) async {
    //   FirebaseAuth _auth = FirebaseAuth.instance;
    //   await _auth.verifyPhoneNumber(
    //     phoneNumber: phoneNumber,
    //     verificationCompleted: (PhoneAuthCredential credential) async {
    //       // Automatically sign in the user on Android devices that support automatic SMS verification
    //       UserCredential result = await _auth.signInWithCredential(credential);
    //       User user = result.user!;
    //       print(user.uid);
    //     },
    //     verificationFailed: (FirebaseAuthException e) {
    //       print(e.message);
    //     },
    //     codeSent: (String verificationId, int? resendToken) {
    //       // Handle code sent callback
    //       resendToken = resendToken;

    //       print('Code Sent: $verificationId');
    //     },
    //     codeAutoRetrievalTimeout: (String verificationId) {
    //       // Auto-retrieval timeout
    //       print('Timeout: $verificationId');
    //     },
    //     forceResendingToken: _resendToken,
    //     timeout: Duration(seconds: 60),
    //   );
    // }

    // _submitOTP(otp) async {
    //   FirebaseAuth _auth = FirebaseAuth.instance;

    //   String smsCode = otp; // Replace with the user's input
    //   try {
    //     PhoneAuthCredential credential = PhoneAuthProvider.credential(
    //       verificationId: widget.verificationId,
    //       smsCode: smsCode,
    //     );

    //     UserCredential result = await _auth.signInWithCredential(credential);
    //     User? user = result.user;
    //     if (user != null) {
    //       Navigator.popUntil(context, (route) => route.isFirst);
    //     }
    //   } catch (e) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //         content: Text('Invalid OTP'),
    //       ),
    //     );
    //   }
    // }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset(
            "assets/icons/logo.png",
            color: AppColors.background,
          ),
        ),
        title: const Text('DigiKhata'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            y40,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Enter your OTP code number",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            y20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                  borderColor: AppColors.primary,
                  focusBorderColor: AppColors.primary,
                  enabledBorderColor: AppColors.primary,
                ),
                controller: otpController,
                length: 6,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 40,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                // style: Theme.of(context)
                //     .textTheme
                //     .headlineSmall!
                //     .copyWith(color: AppColors.failure),
                onChanged: (pin) {
                  print("Changed: $pin");
                },
                onCompleted: (pin) {
                  // _submitOTP(pin);
                  setState(() {
                    pincode = pin;
                  });
                  print("Completed: $pin");
                },
              ),
            ),
            y20,
            Container(
              height: 90,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.primary),
                ),
                onPressed: () {
                  // _submitOTP(pincode);s
                },
                child: const Text('Continue'),
              ),
            ),
            y40,
            const Text(
              "Didn't receive any code?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,
            ),
            y10,
            GestureDetector(
              onTap: () {},
              child: Text(
                "Resend New Code",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.primary,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
