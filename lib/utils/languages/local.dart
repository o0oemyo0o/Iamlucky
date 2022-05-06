
import 'package:get/get.dart';
import 'package:iamlucky/utils/languages/ar.dart';
import 'package:iamlucky/utils/languages/en.dart';

class MyLocal extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en':en,
    'ar':ar,
  };
}

