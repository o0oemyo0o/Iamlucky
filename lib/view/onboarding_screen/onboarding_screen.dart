
import 'package:flutter/material.dart';
import 'package:iamlucky/controller/onboarding_controller.dart';
import 'package:iamlucky/view/onboarding_screen/widget_onboarding/pages_of_onboarding.dart';
import 'package:iamlucky/view/onboarding_screen/widget_onboarding/progress_bar_of_onboarding.dart';

import 'widget_onboarding/textbutton_start_or_next.dart';

class OnBoarding extends StatelessWidget {
  final _controller = OnboardingController();

  OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //view items images and descriptions
            PagesOfOnboarding(controller: _controller),//الجزء الاول
            //Progress bar
            ProgressBar(controller: _controller),//الجزء الثاني
            //TextButton Start Or Next
            ButtonStartOrNext(controller: _controller),//الجزء الثالث
          ],
        ),
      ),
    );
  }
}






