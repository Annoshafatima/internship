// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:internship/src/controller/assets/images/appimages.dart';
// import 'package:internship/src/controller/colors/appcolors.dart';
// import 'package:internship/src/controller/constants/buttons/textbutton.dart';
//
// import 'package:internship/src/view/startingviews/onboardingview/onboardingview.dart';
// class Splashview extends StatefulWidget {
//   const Splashview({super.key});
//
//   @override
//   State<Splashview> createState() => _SplashviewState();
// }
//
// class _SplashviewState extends State<Splashview> {
//   @override
//   void initState(){
//     super.initState();
//     Future.delayed(Duration(seconds: 5),()
//     {Navigator.push(context,MaterialPageRoute(builder: (context)=>Onboardingview()) );
//     });
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(children: [Image.asset(AppImages.splashlogoImage),
//         SizedBox(height: 50,),
//         Text('Manage your tasks',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black) ,),
//       Container(height: 80,width: 260,
//       child: Text('organize,plan and collaborate on tasks with Mtodo.Your busy life deserves this.you can manage checklist and your goal.',
//       style: GoogleFonts.roboto(color:Color(0xff8D93AB)),),
//       ),
//           SizedBox(height: 40,),
//          CustomButton(text:'Get Started',backgroundColor: AppColors.lightPurpleColor,textColor: Colors.white,onPressed: (){})
//
//
//
//
//
//       ],),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/src/controller/assets/images/appimages.dart';
import 'package:internship/src/controller/colors/appcolors.dart';
import 'package:internship/src/controller/constants/buttons/textbutton.dart';
import 'package:internship/src/view/startingviews/onboardingview/onboardingview.dart';


class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Onboardingview()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.splashlogoImage,
              height: 300,
              width: 300,
            ),
            const SizedBox(height: 30),
            const Text(
              'Manage your tasks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Organize, plan, and collaborate on tasks with Mtodo. Your busy life deserves this. You can manage checklists and your goals.',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: const Color(0xFF6E758C)
                  ),
                  
                ),
              ),

            const SizedBox(height: 30),
            CustomButton(
              text: 'Get Started',
              backgroundColor: AppColors.lightPurpleColor,
              textColor: Colors.white,
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Onboardingview()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
