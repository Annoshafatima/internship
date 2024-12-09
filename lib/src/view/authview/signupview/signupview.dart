// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:internship/src/controller/colors/appcolors.dart';
// import 'package:internship/src/controller/constants/buttons/inkwell.dart';
// import 'package:internship/src/controller/constants/buttons/textbutton.dart';
// import 'package:internship/src/controller/constants/buttons/textformfield.dart';
//
// class Signupview extends StatefulWidget {
//   const Signupview({super.key});
//
//   @override
//   State<Signupview> createState() => _SignupviewState();
// }
//
// class _SignupviewState extends State<Signupview> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 50),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 8),
//               child: Text('mtodo Logo',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:20.sp,color: Color(0xff6E758C)),),
//             ),
//             SizedBox(height: 30.h,),
//             Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Center(child: Text('Hello!',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:24.sp,color: Color(0xff6E758C)),)),
//             ),
//             Center(child: Text('welcome to Mtodo app',style: GoogleFonts.jost( fontSize:16.sp,color: Color(0xff6E758C)),)),
//             Center(child: Text('Sign up to get started',style: GoogleFonts.jost( fontSize:16.sp,color: Color(0xff6E758C)),)),
//             SizedBox(height: 20.h,),
//             CustomTextField(hintText: 'Your name'),
//             CustomTextField(hintText: 'Enter Email'),
//             CustomTextField(hintText: 'password',isPassword: true,),
//             CustomTextbutton(),
//             SizedBox(height: 30.h,),
//             CustomButton(text: 'Sign Up', backgroundColor:AppColors.darkPurpleColor, textColor:Colors.white, onPressed:(){
//
//             }),
//             SizedBox(height: 10.h,),
//             Row(mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Already have an account?',style: GoogleFonts.roboto(color: Color(0xff6E758C),fontSize: 13.sp),),
//                 TextButton(onPressed: (){
//
//                 },
//                   child: Text('LOG IN',style: GoogleFonts.roboto(decoration: TextDecoration.underline,
//                       color: AppColors.lightPurpleColor,fontWeight: FontWeight.w500),
//                   ),
//                 )
//
//               ],
//             )
//
//
//
//           ],),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/colors/appcolors.dart';
import 'package:internship/src/controller/constants/buttons/inkwell.dart';
import 'package:internship/src/controller/constants/buttons/textbutton.dart';
import 'package:internship/src/controller/constants/buttons/textformfield.dart';
import 'package:internship/src/view/authview/loginview/loginview.dart';

class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap content to handle overflow on small screens
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Logo or Placeholder
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Mtodo Logo',
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp,
                    color: const Color(0xff6E758C),
                  ),
                ),
              ),
              SizedBox(height: 30.h),

              // Welcome Heading
              Center(
                child: Column(
                  children: [
                    Text(
                      'Hello!',
                      style: GoogleFonts.jost(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                        color: const Color(0xff6E758C),
                      ),
                    ),
                    Text(
                      'Welcome to Mtodo app',
                      style: GoogleFonts.jost(
                        fontSize: 16.sp,
                        color: const Color(0xff6E758C),
                      ),
                    ),
                    Text(
                      'Sign up to get started',
                      style: GoogleFonts.jost(
                        fontSize: 16.sp,
                        color: const Color(0xff6E758C),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              // Input Fields
              CustomTextField(hintText: 'Your name'),
              CustomTextField(hintText: 'Enter Email'),
              CustomTextField(hintText: 'Password', isPassword: true),
              CustomTextbutton(), // Assuming this widget is implemented correctly
              SizedBox(height: 30.h),

              // Sign Up Button
              CustomButton(
                text: 'Sign Up',
                backgroundColor: AppColors.darkPurpleColor,
                textColor: Colors.white,
                onPressed: () {
                  // Implement sign-up functionality here
                },
              ),
              SizedBox(height: 10.h),

              // Log In Redirect
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: GoogleFonts.roboto(
                      color: const Color(0xff6E758C),
                      fontSize: 13.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Loginview()), // Replace LoginView with your login screen widget
                      );
                    },
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.underline,
                        color: AppColors.lightPurpleColor,
                        fontWeight: FontWeight.w500,
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
