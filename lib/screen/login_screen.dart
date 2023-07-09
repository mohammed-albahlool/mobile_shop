import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Welcome',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text('back!',
                      style: TextStyle(
                        color: Colors.green.shade600,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    letterSpacing: 1,
                    fontSize: 14,
                  ),
                  prefixIcon: Icon(Icons.person_outline,color: Colors.green.shade600,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green.shade100,
                      // strokeAlign: StrokeAlign.center,
                    ),
                  ),

                  //************************************
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green.shade600,
                    ),

                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    letterSpacing: 1,
                    fontSize: 14,
                  ),
                  prefixIcon: Icon(Icons.lock_outline,color: Colors.green.shade600,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green.shade100,
                      // strokeAlign: StrokeAlign.center,
                    ),
                  ),

                  //************************************
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green.shade600,
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 215),
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    'Forget password?',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/reset_password_screen'),
                child: Text('LOGIN',style: TextStyle(fontSize: 16),),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity  , 50),
                  backgroundColor: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              const SizedBox(height: 270),
              RichText(
                text: TextSpan(
                  text: 'Haven\'t an account ? ',
                  style:  TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  children: [
                    const TextSpan(text: ''),
                    TextSpan(
                        text: 'Sign up',
                        style:  TextStyle(
                            color: Colors.green.shade600,
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
