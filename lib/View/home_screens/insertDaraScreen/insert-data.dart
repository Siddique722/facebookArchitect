import 'package:archi/Controller/components/apploader/apploader.dart';
import 'package:archi/Controller/components/button-widget.dart';
import 'package:archi/Controller/components/primary-text-component.dart';
import 'package:archi/Controller/components/text-form-field-widget.dart';
import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InsertData extends StatefulWidget {
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();

  // function for insert data into real time data base
  inserData()async{
    try
    {
      isLoading=true;
      setState(() {

      });
      String id=DateTime.now().second.toString();//millisecondsSinceEpoch.toString();

      await FirebaseFirestore.instance.collection('Todo')
          .doc(id)
          .set({
        //key :  value
        //field : value
        'title':titleController.text,
        'description':descriptionController.text,
        'id':id
      });
    }
    catch (error){
      isLoading=false;
      setState(() {

      });
      print('Error:$error');
    }finally
    {
      Navigator.pop(context);
    }


  }
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: Text('Insert Data',),
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 40,),
        PrimaryTextWidget(text: 'Insert Data',textsize: 30,),
        TextFormWidgetUpdate(hintText: 'Enter Title', controller: titleController),
        TextFormWidgetUpdate(hintText: 'Enter Descrptions', controller: descriptionController),
       SizedBox(height: 10,),

        isLoading?AppLoader():
        ButtonWidget(text: 'Add', ontap: (){
          inserData();

        })
      ],),),
    );
  }
}
