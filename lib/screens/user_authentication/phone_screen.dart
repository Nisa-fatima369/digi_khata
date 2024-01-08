import 'package:digi_khata/config/routes.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final TextEditingController numberController = TextEditingController();
  String initialCountry = 'PK';
  PhoneNumber number = PhoneNumber(isoCode: 'PK');

  // String? countrycode;
  // Future<void> sendOTP(String phoneNumber) async {
  //   FirebaseAuth _auth = FirebaseAuth.instance;

  //   await _auth.verifyPhoneNumber(
  //     phoneNumber: phoneNumber,
  //     // verificationCompleted: (PhoneAuthCredential credential) async {
  //     //   // Automatically sign in the user on Android devices that support automatic SMS verification
  //     //   UserCredential result = await _auth.signInWithCredential(credential);
  //     //   User user = result.user!;
  //     //   print(user.uid);
  //     // },
  //     // verificationFailed: (FirebaseAuthException e) {
  //     //   print(e.message);
  //     // },
  //     codeSent: (String verificationId, [int? resendToken]) {
  //       print('Code Sent: $verificationId');
  //       Navigator.pushNamed(
  //         context,
  //         Routes.otp,
  //         arguments: verificationId,
  //       );
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {
  //       print('Timeout: $verificationId');
  //     },
  //     timeout: Duration(
  //       seconds: 60,
  //     ),
  //   );
  // }

  @override
  void dispose() {
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset(
            "assets/icons/logo.png",
            color: AppColors.background,
          ),
        ),
        title: const Text('DigiKhata'),
        actions: [
          Row(
            children: [
              Text(
                'English',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: AppColors.background),
              ),
              IconButton(
                onPressed: () {
                  // showModalBottomSheet(
                  //     context: context,
                  //     builder: (context) {
                  //       return SizedBox(
                  //         height: 600,
                  //         child: Column(
                  //           children: [
                  //             ListTile(
                  //               title: Text('English'),
                  //               onTap: () {
                  //                 Navigator.pop(context);
                  //               },
                  //             ),
                  //             ListTile(
                  //               title: Text('Urdu'),
                  //               onTap: () {
                  //                 Navigator.pop(context);
                  //               },
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     });
                },
                icon: const Icon(Icons.arrow_drop_down),
              ),
            ],
          )
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: AppColors.border,
                  ),
                ),
                child: InternationalPhoneNumberInput(
                  hintText: 'Phone Number',
                  cursorColor: AppColors.primaryText,
                  onInputChanged: (PhoneNumber number) {},
                  onInputValidated: (bool value) {},
                  onSaved: (PhoneNumber number) {},
                  selectorConfig: const SelectorConfig(
                    useBottomSheetSafeArea: true,
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone Number is required';
                    }
                    return null;
                  },
                  textFieldController: numberController,
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                height: 90,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primary),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate() &&
                        numberController.text.isNotEmpty) {
                      setState(() {
                        isLoading = true;
                      });
                      Navigator.pushNamed(context, Routes.otp);
                    }
                  },
                  child: isLoading
                      ? const CircularProgressIndicator(
                          color: AppColors.background,
                        )
                      : const Text('Login'),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
