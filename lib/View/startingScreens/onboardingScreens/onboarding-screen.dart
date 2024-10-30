import 'package:archi/Controller/constants/app_assets/images.dart';
import 'package:archi/View/auth_screens/login-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  
  Widget pageBuidler(String image, String text1,){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        Text(text1),
        SizedBox(height: 50,)
      ],
    );
  }
  PageController pageController=PageController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: pageController,
          onPageChanged: (index){
            currentIndex=index;
            setState(() {

            });
          },
          children: [
            //1st page
            pageBuidler(AppImages.userImage, 'text1'),

            //2nd page
            pageBuidler(AppImages.userImage, 'text2'),
            //3rd page
            pageBuidler(AppImages.userImage, 'text3'),
          ],
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /*
              uniry operatory
               0<2, 1<2, 2<2
              currentIndex<2? widget1 : widget2
              ? represent for if body
              : represent for else body
                0<2, 1<2, 2<2
              if(currentIndex<2)/F
              {
                  nextbutton
              }
              else
              {
                getstartted button
              }
              else if()
              {

              }
              else
              {

              }

              * */

              currentIndex<2
                  ?// use for if body

              FloatingActionButton(

              onPressed: (){
                pageController.nextPage(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.ease
                );
              },backgroundColor: Colors.blue,
              child: Text('Next'),
              )
                  :// use for else body
              FloatingActionButton(
                child: Text('Start'),

                onPressed: (){
                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>LoginSCreen()));
                },backgroundColor: Colors.green,)

          ],),
        )
      ],),
    );
  }
  /// function widget
}
// function widget--> local widget

//global widget
