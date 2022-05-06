import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/utils/languages/local.dart';
import 'package:iamlucky/utils/languages/local_controller.dart';
import 'package:iamlucky/view/splash_screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
//حتى استطيع ان اصل لها باي مكان داخل التطبيق
SharedPreferences? sharedPreferences;

void main() async{
  //  لضمان سلامة التهيئة للتطبيق
  WidgetsFlutterBinding.ensureInitialized();
  //اخذت Instance من SharedPreferences
  sharedPreferences=await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //احتاجة للوصول لقيمة المتغير intialLang
    LocalController localController=Get.put(LocalController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: SplashScreen(),
      //يحدد لغة الجهاز
      locale: localController.intialLang,
      //التعريف بملفات الترجمة
      translations: MyLocal(),
    );
  }
}

