import 'package:archi/Controller/components/apploader/apploader.dart';
import 'package:archi/Controller/components/button-widget.dart';
import 'package:archi/Controller/components/primary-text-component.dart';
import 'package:archi/Controller/components/text-form-field-widget.dart';
import 'package:archi/Controller/constants/colors/app-colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpadtetData extends StatefulWidget {
  const UpadtetData({super.key});

  @override
  State<UpadtetData> createState() => _UpadtetDataState();
}

class _UpadtetDataState extends State<UpadtetData> {
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();

  // function for insert data into real time data base

  bool isLoading=false;
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


        })
      ],),),
    );
  }
}
