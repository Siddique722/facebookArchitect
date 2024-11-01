import 'package:archi/Controller/components/image-component.dart';
import 'package:archi/Controller/constants/app_assets/images.dart';
import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        ImageComponet(image: AppImages.splashImage),
        //Image.asset(AppImages.splashImage,height: 100,),
        Text('Todo App',style: TextStyle(color: AppColors.appPrimaryColor),)
      ],),),
    );
  }
}
