
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/colors/appcolors.dart';
import 'package:internship/src/controller/constants/buttons/customlisttile.dart';
import 'package:internship/src/controller/constants/buttons/richtexthome.dart';
import 'package:internship/src/controller/constants/buttons/taskbox.dart';
import 'package:internship/src/controller/constants/buttons/timebutton.dart';
import 'package:internship/src/view/homeview/insertdataview/insertdataview.dart';
import '../../controller/assets/images/appImages.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPurpleColor,

      // Drawer
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AppImages.profile),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey Annosha',
                          style: TextStyle(
                            color: AppColors.darkPurpleColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'annoshafatima783@gmail.com',
                          style: TextStyle(
                            color: AppColors.darkGrayColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomListTile(icon: Icons.edit, title: 'Edit profile'),
              CustomListTile(icon: Icons.edit_calendar_outlined, title: 'Daily tasks'),
              CustomListTile(icon: Icons.star, title: 'Important Tasks'),
              CustomListTile(icon: Icons.done_all, title: 'Done tasks'),
            ],
          ),
        ),
      ),

      // Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Gradient Section
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    // Header Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(builder: (context) {
                          return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(Icons.menu, color: Colors.white),
                          );
                        }),
                        Text(
                          'Mtodo Logo',
                          style: GoogleFonts.jost(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(AppImages.profile),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Richtexthome(),
                    SizedBox(height: 10.h),
                    Text(
                      'Thursday, October 04, 2024',
                      style: GoogleFonts.jost(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.h),

            // Search Box
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 45.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.darkGrayColor.withOpacity(0.2),
                    blurRadius: 4.r,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10.w),
                  Text(
                    'Search tasks',
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            // Time Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Timebuttons(
                  text: 'Today',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Insertdataview()),
                    );
                  },
                ),
                Timebuttons(text: 'Week', onPressed: () {}),
                Timebuttons(text: 'Monthly', onPressed: () {}),
              ],
            ),

            SizedBox(height: 20.h),

            // Task Boxes Section
            Wrap(
             
              children: [
                  Taskbox(backgroundColor: AppColors.darkGrayColor, imagePath: AppImages.school,
                          title: 'School', countText: '9', titleColor: Colors.white),
                      Taskbox(backgroundColor:AppColors.darkPurpleColor, imagePath: AppImages.work,
                          title: 'Work', countText: '7', titleColor:Colors.white),
                      Taskbox(backgroundColor: AppColors.peachColor, imagePath: AppImages.shop, title: 'Shop',
                          countText: '12', titleColor: Colors.white),
                      Taskbox(backgroundColor: AppColors.darkPurpleColor, imagePath: AppImages.read, title: 'Read', countText: '6', titleColor: Colors.white),
                      Taskbox(backgroundColor: AppColors.lightGreenColor, imagePath: AppImages.health, title:'Workout', countText: '4', titleColor: Colors.white)
                      ,
                      Taskbox(backgroundColor: AppColors.whiteColor, imagePath: AppImages.add, title: '', countText: '', titleColor: Colors.white)],

                  ),
              ],
            ),  
    )
    
      
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:internship/src/controller/constants/buttons/taskbox.dart';
// import 'package:internship/src/controller/constants/buttons/timebutton.dart';
//
// import '../../controller/assets/images/appImages.dart';
// import '../../controller/colors/appcolors.dart';
//
// class Homeview extends StatefulWidget {
//   const Homeview({Key? key}) : super(key: key);
//
//   @override
//   State<Homeview> createState() => _HomeviewState();
// }
//
// class _HomeviewState extends State<Homeview> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Remove the background color and use a gradient with rounded edges
//       body: Stack(
//           children: [
//       // Custom Gradient Background with Rounded Edges
//       ClipRRect(
//       borderRadius: BorderRadius.vertical(
//       bottom: Radius.circular(30.r),
//     ),
//     child: Container(
//     height: MediaQuery.of(context).size.height * 0.45,
//     width: MediaQuery.of(context).size.width,
//     decoration: BoxDecoration(
//     gradient: LinearGradient(
//     begin: Alignment.topCenter,
//     end: Alignment.bottomCenter,
//     colors: [
//     AppColors.darkPurpleColor,
//     AppColors.lightPurpleColor,
//     ],
//     ),
//     ),
//     ),
//     ),
//
//     // Main Content
//     SingleChildScrollView(
//     child: Padding(
//     padding: const EdgeInsets.all(10.0),
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//     SizedBox(height: 50.h),
//
//     // App Bar
//     Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//     Builder(
//     builder: (context) {
//     return IconButton(
//     onPressed: () {
//     Scaffold.of(context).openDrawer();
//     },
//     icon: Icon(Icons.menu, color: Colors.white),
//     );
//     },
//     ),
//     Text(
//     'Mtodo Logo',
//     style: GoogleFonts.jost(
//     color: Colors.white,
//     fontSize: 20.sp,
//     fontWeight: FontWeight.w500,
//     ),
//     ),
//     CircleAvatar(
//     backgroundImage: AssetImage(AppImages.profile),
//     ),
//     ],
//     ),
//
//     SizedBox(height: 30.h),
//
//     // Greeting and Date
//     Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//     RichText(
//     text: TextSpan(
//     text: 'You have ',
//     style: GoogleFonts.jost(
//     fontSize: 18.sp,
//     fontWeight: FontWeight.w500,
//     color: Colors.white,
//     ),
//     children: [
//     TextSpan(
//     text: '5 tasks',
//     style: GoogleFonts.jost(
//     fontSize: 18.sp,
//     fontWeight: FontWeight.bold,
//     color: Colors.white,
//     ),
//     ),
//     TextSpan(
//     text: ' today!',
//     style: GoogleFonts.jost(
//     fontSize: 18.sp,
//     fontWeight: FontWeight.w500,
//     color: Colors.white,
//     ),
//     ),
//     ],
//     ),
//     ),
//     SizedBox(height: 10.h),
//     Text(
//     'Saturday, September 10, 2022',
//     style: GoogleFonts.jost(
//     fontSize: 12.sp,
//     fontWeight: FontWeight.w500,
//     color: Colors.white,
//     ),
//     ),
//     SizedBox(height: 20.h),
//     // Search Bar
//     Container(
//     height: 40,
//     width: 240,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 4.r,
//             color: AppColors.darkGrayColor.withOpacity(0.2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0),
//             child: Icon(Icons.search, color: AppColors.darkGrayColor),
//           ),
//           Text(
//             'Search tasks',
//             style: TextStyle(
//               color: AppColors.darkGrayColor,
//               fontSize: 14.sp,
//             ),
//           ),
//         ],
//       ),
//     ),
//     ],
//     ),
//
//       SizedBox(height: 30.h),
//
//       // Task Filter Buttons
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Timebuttons(text: 'Today', onPressed: () {}),
//           Timebuttons(text: 'Week', onPressed: () {}),
//           Timebuttons(text: 'Month', onPressed: () {}),
//         ],
//       ),
//
//     SizedBox(height: 30.h,),
//     Wrap(
//     children: [
//     Taskbox(backgroundColor: Color(0xff2A8899), imagePath: AppImages.school,
//     title: 'School', countText: '7', titleColor: Colors.white),
//     Taskbox(backgroundColor: Color(0xff5EB0D2), imagePath: AppImages.work,
//     title: 'Work', countText: '6', titleColor:Colors.white),
//     Taskbox(backgroundColor: Color(0xffBE8972), imagePath: AppImages.shop, title: 'Shop',
//     countText: '3', titleColor: Colors.white),
//     Taskbox(backgroundColor: Color(0xff646FD4), imagePath: AppImages.read, title: 'Read', countText: '4', titleColor: Colors.white),
//     Taskbox(backgroundColor: Color(0xff83BC74), imagePath: AppImages.health, title:'Workout', countText: '1', titleColor: Colors.white)
//     ,
//     // Taskbox(backgroundColor: Color(0xffffe8e8), imagePath: AppImages.add, title: '', countText: '', titleColor: Colors.white)
//       ],
//
//     )
//     ],
//     ),
//
//
//
//     ),
//     ),
//
//           ],
//       ),
//     );
//   }
// }
