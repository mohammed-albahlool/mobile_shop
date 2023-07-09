import 'package:flutter/material.dart';
import 'package:mobile_shop/screen/launch_screen.dart';
import 'package:mobile_shop/screen/login_screen.dart';
import 'package:mobile_shop/screen/onboarding_screen.dart';
import 'package:mobile_shop/screen/otp_verification_screen.dart';
import 'package:mobile_shop/screen/reset2_password_screen.dart';
import 'package:mobile_shop/screen/reset3_password_screen.dart';
import 'package:mobile_shop/screen/reset_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/otp_verification_screen',
          routes: {
    '/launch_screen': (context) => const LaunchScreen(),
    '/on_boarding_screen': (context) => const OnBoardingScreen(),
    '/otp_verification_screen': (context) => const OtpVerificationScreen(),
    '/login_screen': (context) => const LoginScreen(),
    '/reset_password_screen': (context) => const ResetPasswordScreen(),
    '/reset2_password_screen': (context) => const Reset2PasswordScreen(),
    '/reset3_password_screen': (context) => const Reset3PasswordScreen(),

    },
    );
  }
}
