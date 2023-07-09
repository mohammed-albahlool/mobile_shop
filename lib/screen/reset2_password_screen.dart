import 'package:flutter/material.dart';

class Reset2PasswordScreen extends StatefulWidget {
  const Reset2PasswordScreen({Key? key}) : super(key: key);

  @override
  State<Reset2PasswordScreen> createState() => _Reset2PasswordScreenState();
}

class _Reset2PasswordScreenState extends State<Reset2PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  IconButton(onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
            icon: const Icon(Icons.info_outline_rounded,color: Colors.black,),
          ),
        ],
      ),

      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65),
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
                '',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'We have sent a password recover instruction to your email  ',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: Text('Open Email',style: TextStyle(fontSize: 16),),
                style: ElevatedButton.styleFrom(
                  minimumSize : Size(double.infinity, 50),
                  backgroundColor: Colors.green.shade600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/reset3_password_screen'),
                child: Text('i\'ll confirm latter',style: TextStyle(color: Colors.grey),),
                style: ElevatedButton.styleFrom(
                  minimumSize : Size(double.infinity, 50),
                  backgroundColor: Colors.green.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),

                  ),
                ),

              ),

            ],
          ),
        ),
      ),

    );
  }
}
