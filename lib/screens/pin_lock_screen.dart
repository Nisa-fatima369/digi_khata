import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class PinLock extends StatefulWidget {
  const PinLock({super.key});

  @override
  State<PinLock> createState() => _PinLockState();
}

class _PinLockState extends State<PinLock> {
  OtpFieldController pinController = OtpFieldController();
  String? pincode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              y40,
              Icon(Icons.lock_outline, size: 80, color: AppColors.primary),
              y15,
              Text(
                'DigiKhata Locked',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              y15,
              Center(
                child: OTPTextField(
                  otpFieldStyle: OtpFieldStyle(
                    borderColor: AppColors.primary,
                    focusBorderColor: AppColors.primary,
                    enabledBorderColor: AppColors.primary,
                  ),
                  controller: pinController,
                  length: 4,
                  width: 200,
                  textFieldAlignment: MainAxisAlignment.spaceBetween,
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
              y15,
              Text(
                'Enter DigiKhata PIN',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              y15,
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot PIN?',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
