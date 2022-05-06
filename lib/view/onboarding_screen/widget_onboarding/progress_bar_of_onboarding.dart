import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/controller/onboarding_controller.dart';
import 'package:iamlucky/utils/languages/local_controller.dart';

class ProgressBar extends StatelessWidget {
   ProgressBar({
    Key? key,
    required OnboardingController controller,required this.size,
  }) : _controller = controller, super(key: key);
  final LocalController localController = Get.find();

  final OnboardingController _controller;
  final Size size;


  @override
  Widget build(BuildContext context) {
    return localController.intialLang=='en'?
      Positioned(
        bottom:size.height*0.90,
        left: 28,


        child: Row(
          children: List.generate(
            _controller.onborardingPages.length,
                (index) => Obx(() {
              return Container(

                margin: EdgeInsets.all(4),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: _controller.openPage.value == index
                      ? ePrimaryColor
                      : ePrimaryText,
                  shape: BoxShape.circle,
                ),
              );
            }),
          ),
        ),

    ) :
    Positioned(
      bottom: size.height*0.90,

      right: size.width*0.80,

      child: Row(
        children: List.generate(
          _controller.onborardingPages.length,
              (index) => Obx(() {
            return Container(

              margin: EdgeInsets.all(4),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: _controller.openPage.value == index
                    ? ePrimaryColor
                    : ePrimaryText,
                shape: BoxShape.circle,
              ),
            );
          }),
        ),
      ),

    );
  }
}