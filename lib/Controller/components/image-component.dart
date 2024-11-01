import 'package:flutter/material.dart';

class ImageComponet extends StatelessWidget {
  String image;
   ImageComponet({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(image,height: 100,);
  }
}
