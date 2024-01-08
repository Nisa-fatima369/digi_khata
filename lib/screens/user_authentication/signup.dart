


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:digi_khata/config/routes.dart';
import 'package:digi_khata/constants.dart';
import 'package:digi_khata/theme/colors.dart';
import 'package:digi_khata/widgets/reusable_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscure = true;
  bool isLoading = false;

  bool isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Image.asset(
                      "assets/icons/logo.png",
                      color: AppColors.primary,
                      height: 200,
                    ),
                    y20,
                    Text('Manage your invoices easily',
                        style: Theme.of(context).textTheme.headlineMedium),
                    y40,
                    Reusable(
                      hintText: 'Username',
                      keyboardType: TextInputType.name,
                      icon: const Icon(Icons.person, color: AppColors.primary),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r"[a-zA-Z]+|\s"),
                        ),
                      ],
                      validattor: (value) {
                        if (value!.isEmpty) {
                          return 'Username is required';
                        }
                        return null;
                      },
                      controller: usernameController,
                    ),
                    y20,
                    Reusable(
                      hintText: 'Email',
                      icon: const Icon(Icons.email, color: AppColors.primary),
                      keyboardType: TextInputType.emailAddress,
                      inputFormatters: const [],
                      controller: emailController,
                      validattor: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
                        } else if (!isValidEmail(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    y20,
                    Reusable(
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      icon: const Icon(Icons.lock, color: AppColors.primary),
                      obscureText: isObscure,
                      inputFormatters: const [],
                      controller: passwordController,
                      suffixIcon: InkWell(
                        child: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                          color: AppColors.primary,
                        ),
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                      ),
                      validattor: (value) {
                        if (value!.isEmpty) {
                          return 'Password is required';
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                    y40,
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.primary,
                          ),
                        ),
                        onPressed: isLoading
                            ? null
                            : () async {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  try {
                                    UserCredential userCredential =
                                        await FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    );
                                    await FirebaseFirestore.instance
                                        .collection('users')
                                        .doc(userCredential.user!.uid)
                                        .set({
                                      'username': usernameController.text,
                                      'email': emailController.text,
                                    });
                                    Navigator.pushNamed(
                                      context,
                                      Routes.signIn,
                                    );
                                  } on FirebaseAuthException catch (e) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: AppColors.failure,
                                        content: Text(e.message ??
                                            'Something went wrong'),
                                      ),
                                    );
                                  } finally {
                                    setState(() {
                                      isLoading = false;
                                    });
                                  }
                                }
                              },
                        child: isLoading
                            ?  Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.background,
                                ),
                              )
                            : Text(
                                'CREATE ACCOUNT',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: AppColors.border),
                              ),
                      ),
                    ),
                    y40,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Have an existing account?',
                            style: Theme.of(context).textTheme.bodyLarge),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                            context,
                            Routes.signIn,
                          ),
                          child: Text(
                            'Login Here',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColors.primary),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),),
      ),
    );
  }
}
