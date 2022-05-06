

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/view/app_widget/build_appbar.dart';
import 'package:iamlucky/view/app_widget/drawer.dart';
import 'package:iamlucky/view/app_widget/navigator_bar.dart';
import 'package:iamlucky/view/app_widget/point_and_level.dart';
import 'package:iamlucky/view/home_screen/widget_home/buttons_home_screen.dart';
import 'package:iamlucky/view/tasks/tasks_screen.dart';
import '../../utils/languages/local_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final LocalController localController = Get.find();
  final GlobalKey<ScaffoldState> drawer = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: drawer,
      /*--------------------- AppBar Method------------------------------*/
      appBar: buildAppBar(drawer:drawer, localController: localController),
      /*--------------------- Drawer Method-------------------------------*/
      drawer: Drawer(
        child: BuildDrawer(size: size, localController:localController ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height*0.77,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*--------------------- Image Profile ------------------------*/
                  Image.asset('assets/images/profile33.png',height: size.height*0.15,),
                  /*--------------------- User Name ------------------------*/
                  Text('New Lucky'.tr,
                    style: GoogleFonts.gloriaHallelujah(
                      fontWeight: FontWeight.bold,
                      color: eBlack,
                      fontSize: 20,
                    ),
                  ),
                  /*--------------------- Point And level------------------------*/

                  PointAndLevel(),

                  /*--------------------- All Buttons ------------------------*/
                 Padding(
                      padding: EdgeInsets.only(top: size.height*0.02,right: 30,left: 30,bottom: size.height*0.02),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(child: buttonsHomeScreen(size: size, text: 'New Task', icon: Icons.add_task, onClick: (){Get.to(()=>TasksScreen());}, color: eButtonColorLavender,)),
                                const SizedBox(width: 10,),
                                Expanded(child: buttonsHomeScreen(size: size, text: 'Redeem Points', icon:Icons.switch_access_shortcut,onClick: (){},color: eButtonColorLightPink,)),
                              ],
                            ),
                            SizedBox(height: size.height*0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(child:buttonsHomeScreen(size: size, text: 'Add 5 Points', icon: Icons.monetization_on_outlined, onClick: (){},color: eButtonColorLightPink,),),
                                SizedBox(width: 10,),
                                Expanded(child: buttonsHomeScreen(size: size, text: 'My achievements', icon: Icons.military_tech, onClick: (){},color: eButtonColorLavender,),),

                              ],
                            ),

                          ],
                        )
                    ),
                ],
              ),
            ),
            /*--------------------- Navigator Bar ------------------------*/
            NavigatorBar(size: size, localController: localController,onClick: (){}),
          ],
        ),
      ),
    );

  }






}










