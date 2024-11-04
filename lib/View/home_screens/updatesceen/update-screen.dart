import 'package:archi/Controller/components/apploader/apploader.dart';
import 'package:archi/Controller/components/button-widget.dart';
import 'package:archi/Controller/components/primary-text-component.dart';
import 'package:archi/Controller/components/text-form-field-widget.dart';
import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpadtetData extends StatefulWidget {
  String docid;
   UpadtetData({super.key,required this.docid});

  @override
  State<UpadtetData> createState() => _UpadtetDataState();
}

class _UpadtetDataState extends State<UpadtetData> {
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();

  // function for insert data into real time data base

  bool isLoading=false;
  updateData()async{
    try{
      isLoading=true;
      setState(() {

      });
      await FirebaseFirestore.instance.collection('Todo').doc(widget.docid).update({
        'title':titleController.text,
        'description':descriptionController.text,
        'id':widget.docid

      });
    }
        catch(error){
      isLoading=false;
      setState(() {


      });
        }finally{
      Navigator.pop(context);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: Text('Update Data',),
      ),
      body: Center(child: Column(children: [
        SizedBox(height: 40,),
        PrimaryTextWidget(text: 'Update Data',textsize: 30,),
        TextFormWidgetUpdate(hintText: 'Enter Title', controller: titleController),
        TextFormWidgetUpdate(hintText: 'Enter Descrptions', controller: descriptionController),
        SizedBox(height: 10,),

        isLoading?AppLoader():
        ButtonWidget(text: 'Update', ontap: (){

updateData();
        })
      ],),),
    );
  }
}
