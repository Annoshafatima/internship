// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class CustomTextField extends StatefulWidget {
//   final String hintText;
//   final bool isPassword;
//
//   const CustomTextField({
//     Key? key,
//     required this.hintText,
//     this.isPassword = false,
//   }) : super(key: key);
//
//   @override
//   _CustomTextFieldState createState() => _CustomTextFieldState();
// }
//
// class _CustomTextFieldState extends State<CustomTextField> {
//   bool _obscureText = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _obscureText = widget.isPassword;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 9, bottom: 9, left: 17, right: 17),
//       child: TextFormField(
//         obscureText: _obscureText,
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Color(0xff6E758C)),
//             borderRadius: BorderRadius.circular(20.r),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: Color(0xff6E758C)),
//             borderRadius: BorderRadius.circular(20.r),
//           ),
//           hintText: widget.hintText,
//           hintStyle: GoogleFonts.roboto(color: Color(0xff6E758C), fontSize: 16.sp, fontWeight: FontWeight.w600),
//           suffixIcon: widget.isPassword
//               ? IconButton(
//             icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
//             onPressed: () {
//               setState(() {
//                 _obscureText = !_obscureText;
//               });
//             },
//           )
//               : null,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/colors/appcolors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9, bottom: 9, left: 17, right: 17),
      child: TextFormField(
        obscureText: isPassword, // Password is always hidden if isPassword is true
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: AppColors.grayColor),
            borderRadius: BorderRadius.circular(20.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: AppColors.grayColor),
            borderRadius: BorderRadius.circular(20.r),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            color: AppColors.grayColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
