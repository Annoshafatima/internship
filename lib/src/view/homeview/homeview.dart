import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship/main.dart';
import 'package:internship/src/controller/colors/appcolors.dart';
class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
        Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Container(height: 300.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.only(
            bottomLeft: Radius.circular(200),
            topLeft: Radius.circular(200),
            bottomRight: Radius.circular(150),
          ),


         gradient: LinearGradient(colors: [
           Color(0xff646FD4).withOpacity(0.9),
             Color(0xff646FD4).withOpacity(1),
            Color(0xff646FD4).withOpacity(0.8),
          Color(0xff646FD4).withOpacity(0.5),


         ])
        ),

      )],),



    ],),

    );
  }
}
