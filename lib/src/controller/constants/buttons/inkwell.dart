import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/colors/appcolors.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'by signing up you agree to our ',
              style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.darkGrayColor),
            ),
            TextSpan(
              text: 'terms and conditions',
              style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.blueColor),
              recognizer: TapGestureRecognizer()..onTap = () {

              },
            ),
            TextSpan(
              text: ' of use and ',
              style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.darkGrayColor),
            ),
            TextSpan(
              text: 'privacy policy',
              style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.blueColor),
              recognizer: TapGestureRecognizer()..onTap = () {

              },
            ),
          ],
        ),
      ),
    );
  }
}