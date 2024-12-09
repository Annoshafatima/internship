// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:internship/src/controller/colors/appcolors.dart';
// import 'package:internship/src/controller/constants/buttons/textbutton.dart';
// import 'package:internship/src/controller/constants/buttons/textformfield.dart';
// import 'package:internship/src/controller/constants/g_fblogin.dart';
//
// class Loginview extends StatefulWidget {
//   const Loginview({super.key});
//
//   @override
//   State<Loginview> createState() => _LoginviewState();
// }
//
// class _LoginviewState extends State<Loginview> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left:8),
//               child: Text('mtodo logo',style: GoogleFonts.jost(fontWeight: FontWeight.w600, fontSize:24.sp,color: Color(0xff6E758C)),),
//             ) ,
//             SizedBox(height: 30,),
//             Center(child: Text('Hello Again!',style: GoogleFonts.jost( fontSize:25.sp,color: Color(0xff6E758C)),)),
//
//             Center(child: Text('Welcome Back',style: GoogleFonts.jost(fontSize:15.sp,color: Color(0xff6E758C)))),
//
//             SizedBox(height: 25.h,),
//
//             CustomTextField(hintText: 'Enter your Email'),
//             CustomTextField(hintText: 'Enter Password',isPassword: true,),
//
//             SizedBox(height: 35.h,),
//
//             CustomButton(text: 'Log In', backgroundColor:AppColors.darkPurpleColor, textColor: Colors.white, onPressed: (){}),
//             SizedBox(height: 25.h,),
//
//             Center(child: Text('Or Continue With',style: GoogleFonts.jost(color: Color(0xff6E758C),fontWeight: FontWeight.w600,fontSize: 10.sp),)),
//             SizedBox(height: 25.h,),
//
//             FbGoogle(),
//
//             SizedBox(height: 15.h,),
//             Row(mainAxisAlignment: MainAxisAlignment.center,
//               children: [Text('Not a Member?',
//                 style: GoogleFonts.roboto(color: Color(0xff6E758C),fontWeight: FontWeight.w600,fontSize: 10.sp),),
//                 TextButton(onPressed: (){},
//                     child: Center(child: Text('Register now',style: GoogleFonts.roboto(color: AppColors.darkPurpleColor,fontWeight: FontWeight.w600,
//                         fontSize: 10.sp),
//                     ),
//                     )
//                 )
//               ],
//             )
//           ]
//       ),
//     );
//
//   }
//}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/colors/appcolors.dart';
import 'package:internship/src/controller/constants/buttons/textbutton.dart';
import 'package:internship/src/controller/constants/buttons/textformfield.dart';
import 'package:internship/src/controller/constants/g_fblogin.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  // To handle overflow issues on smaller screens
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo Text
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Mtodo logo',
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp,
                    color: const Color(0xff6E758C),
                  ),
                ),
              ),
              SizedBox(height: 30.h),

              // Welcome Text
              Center(
                child: Column(
                  children: [
                    Text(
                      'Hello Again!',
                      style: GoogleFonts.jost(
                        fontSize: 25.sp,
                        color: const Color(0xff6E758C),
                      ),
                    ),
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.jost(
                        fontSize: 15.sp,
                        color: const Color(0xff6E758C),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),

              // Custom TextFields for email and password
              CustomTextField(hintText: 'Enter your Email'),
              CustomTextField(hintText: 'Enter Password', isPassword: true),

              SizedBox(height: 35.h),

              // Log In Button
              CustomButton(
                text: 'Log In',
                backgroundColor: AppColors.darkPurpleColor,
                textColor: Colors.white,
                onPressed: () {
                  // Implement your login functionality here
                },
              ),
              SizedBox(height: 25.h),

              // Or Continue with text
              Center(
                child: Text(
                  'Or Continue With',
                  style: GoogleFonts.jost(
                    color: const Color(0xff6E758C),
                    fontWeight: FontWeight.w600,
                    fontSize: 10.sp,
                  ),
                ),
              ),
              SizedBox(height: 25.h),

              // Facebook/Google Login
              FbGoogle(),  // Assuming FbGoogle widget handles social login functionality

              SizedBox(height: 15.h),

              // Not a Member? Text with Register Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a Member?',
                    style: GoogleFonts.roboto(
                      color: const Color(0xff6E758C),
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implement your registration page navigation here
                    },
                    child: Center(
                      child: Text(
                        'Register now',
                        style: GoogleFonts.roboto(
                          color: AppColors.darkPurpleColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
