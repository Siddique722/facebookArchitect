import 'package:archi/Controller/components/apploader/apploader.dart';
import 'package:archi/Controller/components/button-widget.dart';
import 'package:archi/Controller/components/image-component.dart';
import 'package:archi/Controller/components/primary-text-component.dart';
import 'package:archi/Controller/components/text-form-field-widget.dart';
import 'package:archi/Controller/constants/app_assets/images.dart';
import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:archi/View/auth_screens/login-screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistraytionScreen extends StatefulWidget {
  const RegistraytionScreen({super.key});

  @override
  State<RegistraytionScreen> createState() => _RegistraytionScreenState();
}

class _RegistraytionScreenState extends State<RegistraytionScreen> {
TextEditingController _emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();

bool isLoading=false;
Future<void> registration()async{
  isLoading=true;
  setState(() {

  });
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: passwordController.text.trim())
      .then((value){
      //successfull snack bar
    print('Account created successfully');
    isLoading=false;
    setState(() {

    });
    Navigator.push(context, CupertinoPageRoute(builder: (context)=>LoginSCreen()));

  }).onError((error, value){
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ImageComponet(image: AppImages.signupImage),
        SizedBox(height:10),
           PrimaryTextWidget(text: 'Register Your Self'),
         TextFormWidget(hintText: 'Enter Your Email:', icon: Icons.mail, controller: _emailController),
         TextFormWidget(hintText: 'Enter Your Password:', icon: Icons.lock_open, controller: passwordController),
          SizedBox(height: 20,),
          isLoading?AppLoader():  ButtonWidget(text: 'SignUp', ontap: (){

             // function calling
              registration();
            }),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Already have an account?'),
              SizedBox(width: 3,),
              InkWell(
                   onTap: (){
                     Navigator.push(context, CupertinoPageRoute(builder: (context)=>LoginSCreen()));
                   },
                  child: PrimaryTextWidget(text: 'Login'))
            ],)
        ],),
      ),

    );
    //   Scaffold(
    //   appBar: AppBar(
    //     title: Text('Registration screen'),
    //   ),
    //   body: Center(child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       TextFormField(
    //         controller: _emailController,
    //         decoration: InputDecoration(
    //           hintText: 'Enter email'
    //         ),
    //
    //       ),
    //       SizedBox(height: 20,),
    //       TextFormField(
    //         controller: _passwordController,
    //         decoration: InputDecoration(
    //           hintText: 'Enter password'
    //         ),
    //       ),
    //       SizedBox(height: 20,),
    //       isLoading?CircularProgressIndicator()
    //           : InkWell(
    //         onTap: ()
    //         // assyncronous
    //         async{
    //           isLoading=true;
    //           setState(() {
    //
    //           });
    //
    //
    //
    //          await FirebaseAuth.
    //          instance.
    //          createUserWithEmailAndPassword
    //            (
    //               email: _emailController.text.trim(),
    //               password: _passwordController.text.trim()
    //          )
    //              .then((value)
    //          // successfull
    //          {
    //            isLoading=false;
    //            setState(() {
    //            });
    //            // snackbar
    //            print('accout created');
    //            Navigator.push(
    //                context, CupertinoPageRoute(
    //                builder: (context)=>LoginSCreen()));
    //          }).onError((error, value){
    //            // error snackbar
    //            isLoading=false;
    //            setState(() {
    //
    //            });
    //            print("Errir:$error");
    //          });
    //         },
    //         child: Container(
    //           height: 40,
    //           width: 150,
    //           decoration: BoxDecoration(
    //             color: Colors.blue,
    //             borderRadius: BorderRadius.circular(100)
    //           ),
    //           child: Center(child: Text('Register',style: TextStyle(color: Colors.white),),),
    //         ),
    //       )
    //
    //   ],),),
    // );
  }
}
