import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_shop/widget/custom_indicator.dart';

class PageOnBoarding extends StatelessWidget {
  const PageOnBoarding({
    required this.image,

    // required this.currentPage,
    Key? key,
  }) : super(key: key);

  final String image;

  // final int currentPage ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(

        children: [
          Image.asset('images/$image.png',height: 350,width: 275,),


        ],
      ),
    );
  }
}


