import 'package:archi/Controller/components/image-component.dart';
import 'package:archi/Controller/components/primary-text-component.dart';
import 'package:archi/Controller/constants/app_assets/images.dart';
import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:archi/View/auth_screens/sign-screen.dart';
import 'package:archi/View/home_screens/home-screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  // init stand for initial state
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3,),()
    {
      isLogedin();
    });
  }


  //-----
isLogedin()
{
  User? user=FirebaseAuth.instance.currentUser;
  if(user==null)
    {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>RegistraytionScreen()));

    }
  else
    {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>HomeScreen()));
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 290.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ImageComponet(image: AppImages.splashImage),
              //Image.asset(AppImages.splashImage,height: 100,),
              PrimaryTextWidget(text: 'Todo App')
              //Text('Todo App',style: TextStyle(color: AppColors.appPrimaryColor),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              PrimaryTextWidget(text: 'Developed By',textweight: FontWeight.w100,),
              PrimaryTextWidget(text: 'Siddique Qureshi',textweight: FontWeight.w900,),
            ],),
          )
        ],
      ),),
    );
  }
}
