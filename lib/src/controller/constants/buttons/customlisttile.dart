import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/colors/appcolors.dart';


class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.darkGrayColor),
      title: Text(
        title,
        style: GoogleFonts.jost(
          color: AppColors.darkGrayColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}