import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        actions: [
          IconButton(onPressed: (){},
            icon: const Icon(Icons.info_outline_rounded,color: Colors.black,),
          ),
        ],
      ),
      body:   const SingleChildScrollView(
        child: Column(
         children: [
          Text(
          'Reset password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          ),
         ],
        ),
      ),

    );
  }
}
