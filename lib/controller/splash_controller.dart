import 'package:get/get.dart';
import 'package:iamlucky/main.dart';
import 'package:iamlucky/view/home_screen/home_screen.dart';
import 'package:iamlucky/view/onboarding_screen/onboarding_screen.dart';



class SplashController extends GetxController {
  @override

  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 3), () {
      if(sharedPreferences?.getBool("isDoneEnter")== null)
      {
        Get.to(() => OnBoarding(), transition: Transition.native);}
      else
        {Get.to(() => HomeScreen(), transition: Transition.native);}
    });
  }
}
