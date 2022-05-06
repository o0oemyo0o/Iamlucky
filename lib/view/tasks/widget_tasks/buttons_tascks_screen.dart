import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';

class buttonsTasksScreen extends StatelessWidget {
  const buttonsTasksScreen({
    Key? key,
    required this.size,
    required this.text,
    required this.title,
    required this.message,
    required this.onClick,
    required this.color,
    required this.valProgress,

  }) : super(key: key);

  final Size size;
  final String title;
  final String text;
  final String message;
  final Color color;
  final double valProgress;
  final Function onClick;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 5,
            width: size.width*.39,

            child: LinearProgressIndicator(
              value: valProgress,
              color:Colors.teal ,
              backgroundColor: color,

            )),
        SizedBox(height: 4,),

        Tooltip(
          message: message.tr,
          padding: EdgeInsets.only(top: 5,bottom:5,right: 2,left: 2 ),
          textStyle: TextStyle(
            color: eBackgroundColor,
            fontSize:15,
          ),
          waitDuration: Duration(seconds:1),
          showDuration: Duration(seconds:2) ,
          child: GestureDetector(
            onTap: (){onClick();},
            child: Container(
              width: size.width*.39,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  SizedBox(height:size.height*0.06 ,),
                  Text(title.tr,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: eBackgroundColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height:size.height*0.06 ,),
                  Text(text.tr,
                    style: TextStyle(
                      color: eBlack,
                      fontSize:15,
                    ),
                  ),
                  SizedBox(height:size.height*0.02 ,),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}