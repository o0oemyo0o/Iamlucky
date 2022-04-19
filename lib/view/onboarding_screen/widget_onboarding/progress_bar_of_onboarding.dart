import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/controller/onboarding_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required OnboardingController controller,
  }) : _controller = controller, super(key: key);

  final OnboardingController _controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
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