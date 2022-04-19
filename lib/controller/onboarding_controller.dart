import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iamlucky/main.dart';
import 'package:iamlucky/model/onboarding_info_model.dart';
import 'package:iamlucky/view/home_screen/home_screen.dart';


class OnboardingController extends GetxController {
//list of model image,title,description
  List<OnboardingInfo> onborardingPages = [
    OnboardingInfo(
        'assets/images/2.png', 'We help you', 'To achieve your tasks'),
    OnboardingInfo('assets/images/1.png', 'Gaining are', 'New habits'),
    OnboardingInfo('assets/images/34.png', 'With us your achievement',
        'Is rewarded with gifts\n of your choice'),
  ];
  //page is opening
  var openPage = 0.obs;
  // controller of pages
  var pageController = PageController();
  //get value open page & onbordingPages -1 then comparing this values
  bool get isLastPage => openPage.value == onborardingPages.length - 1;
  //method into next view or home screen
  forwardTextButton() {
    if (isLastPage) {
      Get.to(() => HomeScreen(), transition: Transition.native);
      sharedPreferences!.setBool("isDoneEnter", true);
    } else {
      pageController.nextPage(
          duration: 300.milliseconds, curve: Curves.decelerate);
    }

  }

}
