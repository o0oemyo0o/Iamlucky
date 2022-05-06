import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iamlucky/constant.dart';

class FormAddNewTask extends StatelessWidget {
  FormAddNewTask({
    Key? key,
    required this.size,
    required this.form,
  }) : super(key: key);

  final Size size;
  final Key form;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Form(
        key: form,
        child: Container(
          width: size.width*0.90,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                style: TextStyle(fontWeight: FontWeight.bold,color: ePrimaryText),
                decoration:   InputDecoration(
                  hintText: 'Task Name'.tr,
                  hintStyle: const TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ePrimaryColor,width:2 ),
                  ),
                  focusedBorder:const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 2),
                  ),
                  errorBorder:const  UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent,width: 2),),

                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              Padding(
                padding:  EdgeInsets.only(top:size.height*0.02,bottom:size.height*0.02),
                child: Row(
                  children: [
                    Text('Time: '.tr,
                      style: TextStyle(fontSize: 18,color: ePrimaryColor,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}