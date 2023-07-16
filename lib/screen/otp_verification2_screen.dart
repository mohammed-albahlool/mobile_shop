import 'package:flutter/material.dart';

class OtpVerificationSecondScreen extends StatefulWidget {

  const OtpVerificationSecondScreen({super.key});

  @override
  State<OtpVerificationSecondScreen> createState() => _OtpVerificationSecondScreenState();
}

class _OtpVerificationSecondScreenState extends State<OtpVerificationSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Stack(children: [
                  Image.asset(
                    'images/image2.png',
                    height: 200,
                    width: 200,
                  ),
                  Positioned(
                    top: 50,
                    left: 60,
                    child: Image.asset(
                      'images/image1.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 45),
              const Text(
                'Phone Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'We need to register your phone number before getting stated ',
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

            ],
          ),
        ),
      ),
    );
  }
}
