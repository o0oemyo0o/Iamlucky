import 'package:flutter/material.dart';
import 'package:iamlucky/constant.dart';

import '../../utils/languages/local_controller.dart';
import '../home_screen/widget_home/basic_navigator_bar.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({
    Key? key,
    required this.size,
    required this.localController,
    this.iconSpecial=Icons.auto_fix_high,
    required this.onClick,

  }) : super(key: key);

  final Size size;
  final LocalController localController;
  final IconData? iconSpecial;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          width: size.width,
          height: 80,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(size.width, 80),
              /*--------------------- Draw basic Navigator Bar --------------------------------------*/
                painter: BNBCustomPainter(),
              ),
              /*--------------------- Floating Action Button --------------------------------------*/
              Center(
                heightFactor: 0.6,
                child: FloatingActionButton(
                  backgroundColor: ePrimaryColor,
                  child:  Icon(iconSpecial,),
                  elevation: 0.1,
                  onPressed: () {onClick();},
                ),
              ),
              /*--------------------- Icon Button of Navigator Bar -------------------------------*/
              Container(
                height: 80,
                width: size.width,
                child: localController.intialLang.toString()== 'ar'
                    ? Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.format_quote,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                    Container(
                      width: size.width * 0.20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.local_offer,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.checklist,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                  ],
                )
                    : Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.checklist,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.local_offer,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                    Container(
                      width: size.width * 0.20,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.format_quote,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 30,
                          color: eBackgroundColor,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}