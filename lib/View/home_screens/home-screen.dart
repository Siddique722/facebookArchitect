import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:archi/View/auth_screens/login-screen.dart';
import 'package:archi/View/home_screens/insertDaraScreen/insert-data.dart';
import 'package:archi/View/home_screens/updatesceen/update-screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // global variable
  String userId='';

  String userEmail='';

  getUserData()async{
    // local variables
try{
  User? user=await FirebaseAuth.instance.currentUser;
  userId= user!.uid;
  userEmail=user.email??"";
  setState(() {

  });
}
    catch(e){
  print('error:$e');
    }
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                CupertinoDialogRoute(
                    builder: (context) => InsertData(userEmail: userEmail,), context: context));
          },
          backgroundColor: AppColors.appPrimaryColor,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          title: Text(userEmail),
          backgroundColor: AppColors.appPrimaryColor,
          actions: [
            IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                      context,
                      CupertinoDialogRoute(
                          builder: (context) => LoginSCreen(),
                          context: context));
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ))
          ],
        ),
        body: StreamBuilder(
          // snapshot
          stream: FirebaseFirestore.instance.collection(userEmail).snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            final data = snapshot.requireData;
            return ListView.builder(
              itemCount: data.size,
              itemBuilder: (context, index) {
                String docid=data.docs[index]['id'];
                String title=data.docs[index]['title'];
                String description=data.docs[index]['description'];
                return Card(
                  color: AppColors.appPrimaryColor,
                  child: ListTile(
                    onLongPress: () {
                      Navigator.push(
                          context,
                          CupertinoDialogRoute(
                              builder: (context) => UpadtetData(
                                userEmail: userEmail,
                                title: title,
                                descriptions: description,
                                docid: docid,
                              ),
                              context: context));
                    },
                    onTap: () async {
                      await FirebaseFirestore.instance
                          .collection(userEmail)
                          .doc(docid)
                          .delete();
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        docid,//data.docs[index]['id'],
                        style: TextStyle(color: AppColors.appPrimaryColor),
                      ),
                    ),
                    title: Text(title),
                    subtitle: Text(description),
                  ),
                );
              },
            );
          },
        ));
  }
}
