//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import 'package:google_fonts/google_fonts.dart';
// import 'package:internship/src/controller/assets/images/appimages.dart';
// import 'package:internship/src/controller/colors/appcolors.dart';
// import 'package:internship/src/controller/constants/buttons/textbutton.dart';
// import 'package:internship/src/view/authview/signupview/signupview.dart';
//
// class Onboardingview extends StatefulWidget {
//   const Onboardingview({super.key});
//
//   @override
//   State<Onboardingview> createState() => _OnboardingviewState();
// }
//
// class _OnboardingviewState extends State<Onboardingview> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body:
//     Center(child: Padding(
//       padding: const EdgeInsets.only(top: 130),
//       child: Column(children: [
//         Image.asset(AppImages.onboardingImage),
//
//         SizedBox(height: 40.h,),
//         Text('Start Manage Your Task With',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:20.sp),),
//         Text('mtodo',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:24.sp,color: Color(0xff9BA3EB)),),
//
//         SizedBox(height: 30.h,),
//         CustomButton(text: 'Sign Up', backgroundColor:AppColors.lightPurpleColor, textColor: Colors.white, onPressed:(){
//           Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Signupview()));
//         }),
//         SizedBox(height: 5.h,),
//         Row(mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Already have an account?',style: GoogleFonts.roboto(color: Color(0xff8D93AB),fontSize: 13.sp),),
//             Text('Log In',style: GoogleFonts.roboto(decoration: TextDecoration.underline,
//                 color: AppColors.lightPurpleColor,fontWeight: FontWeight.w500),
//             )
//
//           ],
//         )
//
//       ],),
//     ),),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/assets/images/appimages.dart';
import 'package:internship/src/controller/colors/appcolors.dart';
import 'package:internship/src/controller/constants/buttons/textbutton.dart';
import 'package:internship/src/view/authview/signupview/signupview.dart';

class Onboardingview extends StatefulWidget {
  const Onboardingview({super.key});

  @override
  State<Onboardingview> createState() => _OnboardingviewState();
}

class _OnboardingviewState extends State<Onboardingview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              children: [
                Image.asset(AppImages.onboardingImage),
                SizedBox(height: 5.h),
                Text(
                  'Start Manage Your Task With',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 20.sp),
                ),
                Text(
                  'mtodo',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 24.sp, color: AppColors.grayColor),
                ),
                SizedBox(height: 5.h),
                CustomButton(
                  text: 'Sign Up',
                  backgroundColor: AppColors.lightPurpleColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signupview()));
                  },
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.roboto(color: AppColors.grayColor, fontSize: 13.sp),
                    ),
                    Text(
                      'Log In',
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        color: AppColors.lightPurpleColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


