import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/utils/languages/local_controller.dart';
import 'package:iamlucky/view/app_widget/point_and_level.dart';


Container BuildDrawer({required Size size,required LocalController localController})  {

  return Container(
    /*--------------------- Background-----------------------------------*/
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [

          eButtonColorLightPink,

          eButtonColorLavender,

        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
    ),

    /*--------------------- make the menu-----------------------------------*/
    child: SingleChildScrollView(
      child: Container(
        width: 300,
        height: size.height,
        padding: const EdgeInsets.all(5.0),
        child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child:
                Stack(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[
                          TextButton(child:
                          Text('Ar',
                            style: GoogleFonts.arvo(
                              color: ePrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ) ,
                              onPressed: (){localController.changeLanguage('ar');}),

                          TextButton(
                              child:Text('En',
                                style: GoogleFonts.arvo(
                                  color: ePrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ) ,
                              onPressed: (){localController.changeLanguage('en');}),
                        ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Image.asset('assets/images/profile33.png',height: 100,width: 160,),


                        Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 15),
                          child: Text(
                            'New Lucky'.tr,
                            style: GoogleFonts.arvo(
                              color: ePrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),


                        PointAndLevel(),
                      ],
                    ),
                  ],
                ),
              ),



              Expanded(
                child: ListView(
                  children: [

                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.person,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'Profile'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.add_task,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'Tasks'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.military_tech,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'My achievements'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.switch_access_shortcut,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'Redeem Points'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.monetization_on_outlined,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'Add 5 Points'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.help_outline,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'Help Center'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.thumbs_up_down_outlined,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'Store Rating'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.login,
                        color: ePrimaryColor,
                      ),
                      title: Text(
                        'Sign out'.tr,
                        style: TextStyle(
                          color: ePrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Georgina',
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 23),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: ePrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36),
                            side: BorderSide(color: ePrimaryColor),
                          ),
                        ),
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 3,),
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Text(
                            'Register as a support store'.tr,
                            style: const TextStyle(
                              fontFamily: 'Georgia',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: ePrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36),
                            side: BorderSide(color: ePrimaryColor),
                          ),
                        ),
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Text(
                            'Publish a commercial Ads'.tr,
                            style: const TextStyle(
                              fontFamily: 'Georgia',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    ),
  );
}

