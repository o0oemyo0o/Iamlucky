import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/controller/onboarding_controller.dart';
import 'package:iamlucky/utils/languages/local_controller.dart';


class ButtonStartOrNext extends StatelessWidget {
   ButtonStartOrNext({
    Key? key,
    required OnboardingController controller,
  }) : _controller = controller, super(key: key);

  final OnboardingController _controller;
  final LocalController localController = Get.find();

  @override
  Widget build(BuildContext context) {



    return
      Positioned(
      bottom: 15,

      right: 20,


      child: TextButton(
        child: Obx((){
          return Text(
            _controller.isLastPage?'Start'.tr:'Next'.tr,
            style: TextStyle(
              color: ePrimaryColor,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          );

        }),
        onPressed:_controller.forwardTextButton,

      ),
    );


  }
}