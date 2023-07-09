import 'package:flutter/material.dart';

class Reset3PasswordScreen extends StatefulWidget {
  const Reset3PasswordScreen({Key? key}) : super(key: key);

  @override
  State<Reset3PasswordScreen> createState() => _Reset3PasswordScreenState();
}

class _Reset3PasswordScreenState extends State<Reset3PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
            icon: const Icon(Icons.info_outline_rounded,color: Colors.black,),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  'Create new password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'your new password must be different from'
                    'previous used passwords',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
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
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.green.shade600,
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm password',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
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
                padding: const EdgeInsets.only(right: 155),
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    'Must Be At Least 8 Characters.',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text(' Confirm',style: TextStyle(fontSize: 16),),
                style: ElevatedButton.styleFrom(
                  minimumSize : Size(double.infinity, 50),
                  backgroundColor: Colors.green.shade600,
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
