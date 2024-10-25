import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GradientClass extends StatefulWidget {
  const GradientClass({super.key});

  @override
  State<GradientClass> createState() => _GradientClassState();
}

class _GradientClassState extends State<GradientClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
        Container(
          height: 43,
          width: 134,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(51),
            gradient: LinearGradient(
              colors:[
                AppColors.ligtPurpleColor,

                AppColors.dartPurpleColor,
              ]

            )
          ),
          child: Center(child: Text('Next',
            style: GoogleFonts.roboto(
            fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w700
          ),),),
        ),
      ),
    );
  }
}
