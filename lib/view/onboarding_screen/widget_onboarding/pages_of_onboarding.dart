import 'package:flutter/material.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/controller/onboarding_controller.dart';

class PagesOfOnboarding extends StatelessWidget {
  const PagesOfOnboarding({
    Key? key,
    required OnboardingController controller,
  }) : _controller = controller, super(key: key);

  final OnboardingController _controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _controller.pageController,
        onPageChanged: _controller.openPage,
        itemCount: _controller.onborardingPages.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  _controller.onborardingPages[index].imageAsset,
                ),
                Text(
                  _controller.onborardingPages[index].title,
                  style: TextStyle(
                    color: ePrimaryColor,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  _controller.onborardingPages[index].description,
                  style: TextStyle(
                    color: ePrimaryText,
                    fontFamily: 'Georgia',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          );
        });
  }
}