import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/assets/images/appimages.dart';
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
      body: AppBar(title: Text('Mtodo Logo',style: GoogleFonts.jost(color: AppColors.darkPurpleColor,fontWeight: FontWeight.bold),),
      centerTitle: true,
      actions:[
Padding(padding:EdgeInsets.only(right: 20) ,
child: CircleAvatar(backgroundImage: AssetImage(AppImages.profile),),)
  ] )

    );
  }
}
