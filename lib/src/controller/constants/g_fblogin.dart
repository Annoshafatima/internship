import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/assets/images/appimages.dart';
import 'package:internship/src/controller/colors/appcolors.dart';


class FbGoogle extends StatefulWidget {
  const FbGoogle({super.key});

  @override
  State<FbGoogle> createState() => _FbGoogleState();
}

class _FbGoogleState extends State<FbGoogle> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 48.h,
          width: 154.w,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.grayColor),
              borderRadius: BorderRadius.circular(12.r)

          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.google,width: 24.w,height: 24.h,),
              SizedBox(width: 10,),
              Text('Google',style: GoogleFonts.roboto(color:AppColors.grayColor,fontWeight: FontWeight.w400,fontSize: 14.sp),),

            ],
          ),),
        SizedBox(width: 20.w,),
        Container(height: 48.h,
          width: 154,
          decoration: BoxDecoration(color:AppColors.darkPurpleColor,

              borderRadius: BorderRadius.circular(12.r)

          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.fbLogo,width: 24.w,height: 24.h,),
              SizedBox(width: 10.w,),
              Text('Facebook',style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14.sp),),

            ],
          ),),

      ],);
  }
}