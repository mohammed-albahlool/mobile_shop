import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/widget/tf_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController fullNameTextEditingController;
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  late TextEditingController confirmPasswordTextEditingController;
  late bool checked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fullNameTextEditingController =TextEditingController();
    emailTextEditingController =TextEditingController();
    passwordTextEditingController =TextEditingController();
    confirmPasswordTextEditingController =TextEditingController();
  }

  @override
  void dispose() {
    fullNameTextEditingController.dispose();
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:90.0),
                child:  Row(
                  children: [
                    Text(
                      "Sign ",
                      style: GoogleFonts.roboto(
                          fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                    Text("Up",
                        style: GoogleFonts.roboto(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff38972e)))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Create a new account!",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff828282))),
              SizedBox(
                height: 70,
              ),
              TFWidget(
                  textEditingController: fullNameTextEditingController,
                  hint: "Full name",
                  secure: false,
                  icons: 'profile'),
              SizedBox(
                height: 14,
              ),
              TFWidget(
                  textEditingController: emailTextEditingController,
                  hint: "Email or phone",
                  secure: false,
                  icons: 'email'),
              SizedBox(
                height: 14,
              ),
              TFWidget(
                  textEditingController: passwordTextEditingController,
                  hint: "Password",
                  secure: false,
                  icons: 'lock'),
              SizedBox(
                height: 14,
              ),
              TFWidget(
                  textEditingController: confirmPasswordTextEditingController,
                  hint: "Confirm password",
                  secure: false,
                  icons: 'lock'),
              SizedBox(
                height: 14,
              ),
              Container(
                child: Row(
                  children: [
                    Checkbox(
                      activeColor: Color(0xff38972e),
                      checkColor: Colors.white,
                      value: checked,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            checked = value;
                          });
                        }
                      },
                    ),
                    Text("Agree with trams and condition.")
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp_verification_screen');
                  },
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF414138),
                      minimumSize: Size(double.infinity, 44),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)))),
              Padding(
                padding: const EdgeInsets.only(top:90.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      "Have an account? ",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color(0xff828282)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_screen');
                      },
                      child: Text(
                        "Log In",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff38972e)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
