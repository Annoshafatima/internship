import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/colors/appcolors.dart';

class Insertdataview extends StatefulWidget {
  const Insertdataview({super.key});

  @override
  State<Insertdataview> createState() => _InsertdataviewState();
}

class _InsertdataviewState extends State<Insertdataview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkPurpleColor,
        leading: Icon(Icons.arrow_back_ios, color: AppColors.whiteColor),
        title: Text(
          'Today Tasks',
          style: GoogleFonts.jost(
            color: AppColors.whiteColor,
            fontSize: 25.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: 250.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.darkPurpleColor.withOpacity(0.9),
                  AppColors.darkPurpleColor,
                  AppColors.darkPurpleColor.withOpacity(0.8),
                  AppColors.darkPurpleColor.withOpacity(0.5),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(150),
              ),
            ),
          ),
          SingleChildScrollView(
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: AppColors.whiteColor,
                      content: Center(
                        child: Container(
                          width: 250.w,
                          height: 230.h,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10.h),
                                      Text(
                                        'Design Todo List',
                                        style: GoogleFonts.signika(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              // child: Center(
              //   child: Padding(
              //     padding: EdgeInsets.only(top: 100.h),
              //     child: Text(
              //       'Tap here for dialog',
              //       style: GoogleFonts.jost(
              //         color: AppColors.whiteColor,
              //         fontSize: 18.sp,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:internship/src/controller/colors/appcolors.dart';
// class Insertdataview extends StatefulWidget {
//   const Insertdataview({super.key});

//   @override
//   State<Insertdataview> createState() => _InsertdataviewState();
// }

// class _InsertdataviewState extends State<Insertdataview> {
//   @override
//   Widget build(BuildContext context) {
//     var scaffold = Scaffold( body:  Container(
//               height: 250.h,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     AppColors.darkPurpleColor.withOpacity(0.9),
//                     AppColors.darkPurpleColor,
//                     AppColors.darkPurpleColor.withOpacity(0.8),
//                     AppColors.darkPurpleColor.withOpacity(0.5),
//                   ],
//                 ),   borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(200),
//                   bottomRight: Radius.circular(150),
//                 ),
//               ),),
//     appBar: AppBar(backgroundColor:AppColors.darkPurpleColor,
//       leading: Icon(Icons.arrow_back_ios,color: AppColors.whiteColor,),
      
//       title: Text('Today Tasks',
//       style: GoogleFonts.jost(color: AppColors.whiteColor,
//       fontSize: 25.sp,
//       fontWeight: FontWeight.w400),
//       ),
//       centerTitle: true,
//     ),
//     body:
//     SingleChildScrollView(
//       child: GestureDetector(
//         onTap: (){
//           showDialog(context: context, builder: (BuildContext context){
//             return AlertDialog(
//               backgroundColor: AppColors.whiteColor,
            
//         },
      
      
//     ) 
    
    
      
//     )
//     ), 
//     );
   
//   }
// }// 