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
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.appPrimaryColor,
          borderRadius: BorderRadius.circular(5)
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(icon,color: Colors.white,)
        ),
      ),
    )
    ;
  }
}

//-----------

class TextFormWidgetUpdate extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  Widget? icon;
  TextFormWidgetUpdate({super.key,
    required this.hintText,
     this.icon,
    required this.controller

  });

  @override
  Widget build(BuildContext context) {
    return     Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.appPrimaryColor,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: icon??null
          ),
        ),
      ),
    )
    ;
  }
}
