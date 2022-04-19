import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init:SplashController() ,
        builder:(_){
          return Scaffold(
            backgroundColor: Colors.white,
            body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Logo
                Expanded(

                  child:
                  Center(child: Image.asset('assets/images/logo2.png')),

                ),
                //label version number
                Text('Demo Version',
                  style: TextStyle(
                    color: ePrimaryColor,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),


          );

        }
    );

  }
}
