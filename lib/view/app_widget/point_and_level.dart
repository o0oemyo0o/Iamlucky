import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';

class PointAndLevel extends StatelessWidget {
  const PointAndLevel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 1.0, color: ePrimaryColor,),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 5,bottom: 5),
            child: Text('500'+' '+'Pts'.tr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: eBlack,
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(width: 20,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: ePrimaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 5,bottom: 5),
            child: Text('Level'.tr+' '+'1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: eBackgroundColor,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}