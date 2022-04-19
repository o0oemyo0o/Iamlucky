import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/controller/onboarding_controller.dart';

class ButtonStartOrNext extends StatelessWidget {
  const ButtonStartOrNext({
    Key? key,
    required OnboardingController controller,
  }) : _controller = controller, super(key: key);

  final OnboardingController _controller;

  @override
  Widget build(BuildContext context) {



    return
      Positioned(
      bottom: 15,
      right: 25,
      child: TextButton(
        child: Obx((){
          return Text(
            _controller.isLastPage?'Start':'Next',
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