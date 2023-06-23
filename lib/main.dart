import 'package:flutter/material.dart';
import 'package:mobile_shop/screen/launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/launch_screen',
          routes: {
    '/launch_screen': (context) => const LaunchScreen(),

    },
    );
  }
}
