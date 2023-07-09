import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset("images/img_otp.png"),
              SizedBox(
                height: 44,
              ),
              Text(
                "Phone Verification",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "We need to register your phone number before getting srated!",
                style: GoogleFonts.poppins(),
                textAlign: TextAlign.center,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
