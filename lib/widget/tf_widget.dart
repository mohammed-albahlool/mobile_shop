import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TFWidget extends StatelessWidget {
  const TFWidget({  Key? key,
    required this.textEditingController,
    required this.hint,
    required this.secure,
    required this.icons
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String hint;
  final bool secure;
  // final IconData icons;
  final String icons;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

      ),
      child: TextField(

        controller: textEditingController,
        style: GoogleFonts.poppins(),
        obscureText: false,
        enabled: true,

        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          constraints: BoxConstraints(


            maxHeight:  50 ,
          ),

          hintText:hint,
          hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
            fontSize: 14,
          ),

          fillColor: Colors.grey,
          filled: false,
          helperMaxLines: 1,
          helperStyle:
          GoogleFonts.poppins(color: Colors.black45, fontSize: 12),
          enabled: false,
          prefixIcon: Image.asset(
            'images/$icons.png',
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.transparent,

            ),
          ),

          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          //************************************



          //************************************
        ),
      ),
    );

  }
}
