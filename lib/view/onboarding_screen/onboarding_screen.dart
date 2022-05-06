
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/controller/onboarding_controller.dart';
import 'package:iamlucky/view/onboarding_screen/widget_onboarding/pages_of_onboarding.dart';
import 'package:iamlucky/view/onboarding_screen/widget_onboarding/progress_bar_of_onboarding.dart';

import '../../utils/languages/local_controller.dart';
import 'widget_onboarding/textbutton_start_or_next.dart';

class OnBoarding extends StatelessWidget {
  final _controller = OnboardingController();
  final LocalController localController = Get.find();
  OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //view items images and descriptions
            PagesOfOnboarding(controller: _controller),
            ProgressBar(controller: _controller,size:size),
            ButtonStartOrNext(controller: _controller),
          ],
        ),
      ),
    );
  }
}






