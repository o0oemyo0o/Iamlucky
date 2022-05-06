import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/utils/languages/local_controller.dart';

AppBar buildAppBar( {required GlobalKey<ScaffoldState> drawer,required LocalController localController}) {


  return localController.intialLang .toString()== 'en'?
  AppBar(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: ePrimaryColor,
    title: Text(
      'I\'m Lucky'.tr,
      style: GoogleFonts.gloriaHallelujah(
        fontSize: 30,
      ),
    ),
    leading:IconButton(
        onPressed: () {
          drawer.currentState!.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: eBackgroundColor,
        )),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.store_outlined,
            color: eBackgroundColor,
          )),
    ],
  ):
   AppBar(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: ePrimaryColor,
    title: Text(
      'I\'m Lucky'.tr,
      style: GoogleFonts.gloriaHallelujah(
        fontSize: 30,
      ),
    ),
    leading: IconButton(
        onPressed: () {
          drawer.currentState!.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: eBackgroundColor,
        )),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.store_outlined,
            color: eBackgroundColor,
          )),
    ],
  );
}