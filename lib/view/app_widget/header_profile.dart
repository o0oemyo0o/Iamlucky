import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iamlucky/view/app_widget/point_and_level.dart';
import '../../constant.dart';


class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
    required this.size,

  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: size.height*0.25,
        child: Column(
          children: [
            Image.asset('assets/images/profile33.png',height: size.height*0.10,width: size.width*0.25,),
            Text(
              'New Lucky'.tr,
              style: GoogleFonts.gloriaHallelujah(
                color: eButtonColorViolet,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            PointAndLevel(),
          ],
        ),
      ),
    );
  }
}