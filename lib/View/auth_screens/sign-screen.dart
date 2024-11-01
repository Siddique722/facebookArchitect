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
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: AppColors.appPrimaryColor,
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            )
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
