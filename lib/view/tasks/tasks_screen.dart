import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamlucky/constant.dart';
import 'package:iamlucky/view/app_widget/build_appbar_of_all.dart';
import 'package:iamlucky/view/app_widget/drawer.dart';
import 'package:iamlucky/view/app_widget/navigator_bar.dart';
import 'package:iamlucky/view/tasks/widget_tasks/buttons_tascks_screen.dart';



import '../../utils/languages/local_controller.dart';
import '../add_new_task/add_new_task.dart';

class TasksScreen extends StatelessWidget {
   TasksScreen({Key? key}) : super(key: key);
  final LocalController localController = Get.find();
  final GlobalKey<ScaffoldState> drawer = GlobalKey();


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;


    return Scaffold(
      key: drawer,
      /*--------------------- AppBar Method------------------------------*/
      appBar: buildAppBarOfAll(localController: localController, drawer: drawer),
      /*--------------------- Drawer Method-------------------------------*/
      drawer:  Drawer(child: BuildDrawer(localController: localController,size:size )),
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height*0.77,
              width: size.width,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20,right: 30,left: 30,bottom: 20),
                      child:Column(
                        children: [
                          /*--------------------- Label Choose type-------------------------------*/

                          Row(
                            children: [
                              Text('Choose the type of task:'.tr,

                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: ePrimaryColor,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          /*--------------------- icon and hint-------------------------------*/

                          Padding(
                            padding:  EdgeInsets.only(top:size.height*0.02,bottom:size.height*0.02  ),
                            child: Row(
                              children: [
                                Icon(Icons.help,size: 20,color: Colors.red,),
                                SizedBox(width: 3,),
                                Text('To see the details of each task, click and hold on it'.tr,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: eBlack,
                                    fontSize: 12,
                                  ),
                                ),

                              ],
                            ),
                          ),



                          /*--------------------- All Buttons And Progress-------------------------------*/

                          SizedBox(height: size.height*0.02,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(child:buttonsTasksScreen(size: size, text:'done Tasks:3' , title: 'Easy Tasks',  onClick: (){Get.to(()=>AddNewTask());}, color: eButtonColorLavender, valProgress: 0.7,
                                message: 'Simple tasks requiring minutes or hours to achieve\nand earning 5 points per completed task',), ),
                              const SizedBox(width: 10,),
                              Expanded(child:buttonsTasksScreen(size: size, text:'done Tasks:3', title:'Routine Tasks',  onClick: (){}, color:eButtonColorLightPink, valProgress: 0.5,
                                message: 'Frequent tasks you are skilled at \n and earning 10 points per completed task',), ),
                            ],
                          ),

                          SizedBox(height: size.height*0.03,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(child:buttonsTasksScreen(size: size, text:'done Tasks:3' , title: 'Complex Tasks', onClick: (){}, color:eButtonColorLightPink, valProgress: 0.3,
                                message: 'Major tasks that needs several days or weeks \n to earn 20 points per completed task',) ),
                              const SizedBox(width: 10,),
                              Expanded(child:buttonsTasksScreen(size: size, text: 'done Tasks:3', title: 'New habit', onClick: (){}, color: eButtonColorLavender, valProgress: 0.4,
                                message: 'New Daily/Weekly habits\n you need to repeat 41 \n times to earn 300 points.',) ),

                            ],
                          ),

                        ],
                      )
                  ),
                ],
              ),
            ),




            /*--------------------- Navigator Bar ------------------------*/
            NavigatorBar(size: size, localController: localController, onClick: (){},iconSpecial: Icons.add,),

        ],),
      ),
      

    );
  }
}


