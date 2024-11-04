import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:archi/View/auth_screens/login-screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){

      },backgroundColor: AppColors.appPrimaryColor,child: Icon(Icons.add,color: Colors.white,),),
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        actions: [
          IconButton(onPressed: ()async{
            await FirebaseAuth.instance.signOut();
            Navigator.pushReplacement(context,
                CupertinoDialogRoute(builder: (context)=>LoginSCreen(),
                  context: context

                ));
          }, icon: Icon(Icons.logout,color: Colors.white,))
        ],
      ),
    );
  }
}
