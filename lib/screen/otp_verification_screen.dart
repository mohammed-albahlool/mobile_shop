import 'package:flutter/material.dart';
<<<<<<< HEAD

import '../widget/code_text_field.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);
=======
import 'package:google_fonts/google_fonts.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});
>>>>>>> origin/master

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
<<<<<<< HEAD



  late TextEditingController _firstCodeTextController;
  late TextEditingController _secondCodeTextController;
  late TextEditingController _thirdCodeTextController;
  late TextEditingController _fourthCodeTextController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  String? _code ;


  @override
  void initState() {
    super.initState();
    _firstCodeTextController = TextEditingController();
    _secondCodeTextController = TextEditingController();
    _thirdCodeTextController = TextEditingController();
    _fourthCodeTextController = TextEditingController();

    _firstFocusNode  = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void deactivate() {
    _firstCodeTextController.dispose();
    _secondCodeTextController.dispose();
    _thirdCodeTextController.dispose();
    _fourthCodeTextController.dispose();

    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();
    super.deactivate();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Stack(
                    children: [
                    Image.asset('images/image2.png', height: 200, width: 200,),
                Positioned(
                  top: 50,
                  left: 60,
                  child: Image.asset('images/image1.png', height: 100, width: 100,),
                ),
                ]
    ),
              ),
              SizedBox(height: 45),
              Text(
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
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: CodeTextField(
                      textEditingController: _firstCodeTextController,
                      focusNode: _firstFocusNode,

                      onChanged: (value) {
                        if(value.isNotEmpty) {
                          _secondFocusNode.requestFocus();

                        }
                      },),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CodeTextField(
                      textEditingController: _secondCodeTextController,
                      focusNode: _secondFocusNode,
                      onChanged: (value) {
                        value.isNotEmpty
                            ? _thirdFocusNode.requestFocus()
                            : _firstFocusNode.requestFocus();
                      },


                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CodeTextField(
                      textEditingController: _thirdCodeTextController,
                      focusNode: _thirdFocusNode,
                      onChanged: (value) {
                        value.isNotEmpty
                            ? _fourthFocusNode.requestFocus()
                            : _secondFocusNode.requestFocus();
                      },

                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CodeTextField(
                      textEditingController: _fourthCodeTextController,
                      focusNode: _fourthFocusNode,
                      onChanged: (value) {
                        if(value.isEmpty) _thirdFocusNode.requestFocus();

                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: Text('Verify Phone Number',style: TextStyle(fontSize: 16),),
                style: ElevatedButton.styleFrom(
                  minimumSize : Size(double.infinity, 50),
                  backgroundColor: Colors.green.shade600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),

                  ),
                ),

              ),
              const SizedBox(height: 40),
              const Text(
                'Edit Phone Number?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login_screen'),
                child: Text('Send Again',style: TextStyle(color: Colors.green.shade400),),
                style: ElevatedButton.styleFrom(
                  minimumSize : Size(50,45),
                  backgroundColor: Colors.green.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),

                  ),
                ),

              ),
=======
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

>>>>>>> origin/master

            ],
          ),
        ),
      ),
    );
  }
<<<<<<< HEAD
 }


























=======
}
>>>>>>> origin/master
