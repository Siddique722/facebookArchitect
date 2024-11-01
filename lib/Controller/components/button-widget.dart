import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  VoidCallback ontap;
   ButtonWidget({super.key,
   required this.text, required this.ontap
   });

  @override
  Widget build(BuildContext context) {
    return      InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
            color: AppColors.appPrimaryColor,
            borderRadius: BorderRadius.circular(100)
        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      ),
    )
    ;
  }
}
