import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/utils/languages/local_controller.dart';
import 'package:iamlucky/view/add_new_task/widget_add_new_task/form_add_new_task.dart';
import 'package:iamlucky/view/app_widget/build_appbar.dart';
import 'package:iamlucky/view/app_widget/drawer.dart';
import 'package:iamlucky/view/app_widget/navigator_bar.dart';

class AddNewTask extends StatelessWidget {
   AddNewTask({Key? key}) : super(key: key);
  final LocalController localController = Get.find();
  final GlobalKey<ScaffoldState> drawer = GlobalKey();
   final GlobalKey<FormState> _formkey=GlobalKey();

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
                 FormAddNewTask(size: size,form:_formkey ,),



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


