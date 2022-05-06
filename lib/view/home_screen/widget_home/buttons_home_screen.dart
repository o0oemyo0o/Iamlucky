import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';

class buttonsHomeScreen extends StatelessWidget {
  const buttonsHomeScreen({
    Key? key,
    required this.size,
    required this.text,
    required this.icon,
    required this.onClick,
    required this.color,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;
  final Color color;
  final Function onClick;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onClick();},
      child: Container(
        width: size.width*.40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Column(
          children: [
            SizedBox(height:size.height*0.04 ,),
            Icon(icon,size: size.height*0.04,),
            SizedBox(height:size.height*0.03 ,),
            Text(text.tr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: eBlack,
                fontSize: 16,
              ),
            ),
            SizedBox(height:size.height*0.03 ,),

          ],
        ),
      ),
    );
  }
}