import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/widget/tf_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController textEditingController;
  late bool checked=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController=TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
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
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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

              TFWidget(textEditingController: textEditingController, hint: "Full name", secure: false,icons:'profile'),
              SizedBox(
                height: 14,
              ),
              TFWidget(textEditingController: textEditingController, hint: "Email or phone", secure: false,icons:'email'),
              SizedBox(
                height: 14,
              ),
              TFWidget(textEditingController: textEditingController, hint: "Password", secure: false,icons:'lock'),
              SizedBox(
                height: 14,
              ),
              TFWidget(textEditingController: textEditingController, hint: "Confirm password", secure: false,icons:'lock'),
              SizedBox(
                height: 14,
              ),
              CheckboxListTile(
                  title: Text("Agree with trams and condition."),
                  activeColor: Color(0xff38972e),
                  checkColor: Colors.white, value: checked, onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    checked = value;
                  });
                }
              },
                 ),



            ],
          ),
        ),
      ),
    );
  }
}
