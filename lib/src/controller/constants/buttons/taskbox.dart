import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Taskbox extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;
  final String title;
  final String countText;
  final Color titleColor;

  const Taskbox({
    Key? key,
    required this.backgroundColor,
    required this.imagePath,
    required this.title,
    required this.countText,
    required this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80.w,
        height: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  countText,
                  style: GoogleFonts.jost(
                  
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: 30.w,
                    height: 50.h,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.jost(
                      
                      color: titleColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}