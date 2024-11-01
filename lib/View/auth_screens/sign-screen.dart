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
  TextEditingController _passwordController=TextEditingController();
bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
