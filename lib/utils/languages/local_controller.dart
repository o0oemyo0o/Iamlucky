import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/main.dart';


class LocalController extends GetxController{
  //المتغير من نوع local يتخزن فيه اذا كان فارغ قيمة لغة الجهاز او القيمة المخزنة SharedPreference
  Locale intialLang=
  sharedPreferences!.getString("Lang")==null? Get.deviceLocale!:Locale(sharedPreferences!.getString("Lang")!);


//لتغير اللغة بناء على اختيار المستخدم
  changeLanguage (String codeLang){
    Locale local=Locale(codeLang);
    sharedPreferences!.setString("Lang",codeLang);
    Get.updateLocale(local);



  }

}


