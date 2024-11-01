import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  IconData icon;
   TextFormWidget({super.key,
   required this.hintText,
     required this.icon,
     required this.controller

   });

  @override
  Widget build(BuildContext context) {
    return     Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.appPrimaryColor,
          borderRadius: BorderRadius.circular(5)
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(icon,color: Colors.white,)
        ),
      ),
    )
    ;
  }
}
