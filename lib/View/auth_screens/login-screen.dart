import 'package:archi/Controller/components/apploader/apploader.dart';
import 'package:archi/Controller/components/button-widget.dart';
import 'package:archi/Controller/components/image-component.dart';
import 'package:archi/Controller/components/primary-text-component.dart';
import 'package:archi/Controller/components/text-form-field-widget.dart';
import 'package:archi/Controller/constants/app_assets/images.dart';
import 'package:archi/View/auth_screens/sign-screen.dart';
import 'package:archi/View/home_screens/home-screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginSCreen extends StatefulWidget {
   LoginSCreen({super.key});

  @override
  State<LoginSCreen> createState() => _LoginSCreenState();
}

class _LoginSCreenState extends State<LoginSCreen> {
TextEditingController _emailController=TextEditingController();

TextEditingController _passwordController=TextEditingController();

bool isLoading=false;

Future<void> login()async{
  isLoading=true;
  setState(() {

  });
  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), password: _passwordController.text.trim()
  ).then((onValue){
    isLoading=false;
    setState(() {

    });
    Navigator.push(context, CupertinoPageRoute(builder: (context)=>HomeScreen()));
  }).onError((error,handleError){
    isLoading=false;
    setState(() {

    });
    // error snackbar
    print('Error:$error');
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ImageComponet(image: AppImages.loginImage),
        PrimaryTextWidget(text: 'Login'),
        TextFormWidget(hintText: 'Enter your Email', icon: Icons.mail, controller: _emailController),
        TextFormWidget(hintText: 'Enter your Password', icon: Icons.password, controller: _passwordController),
        SizedBox(height: 10,),
       isLoading?AppLoader():
       ButtonWidget(text: 'Login', ontap: (){
          login();
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?'),
            SizedBox(width: 3,),
            InkWell(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>RegistraytionScreen()));
                },
                child: PrimaryTextWidget(text: 'Register'))
          ],)

      ],),
    ));
  }
}
