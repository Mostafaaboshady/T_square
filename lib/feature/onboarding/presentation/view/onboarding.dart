import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/onboardingitem.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/ongoingbottomsheet.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/ongoingpagebuilder.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/roundbutton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/style.dart';


class onboarding extends StatelessWidget {
   onboarding({super.key});

  PageController pageController=PageController();

  int selectPage=0;

  List pageContent=[
    {
      "img": "lib/core/assets/ongoingScreen1.png",
      "title": "Your favorite place to work",
      "subtitle": "In The Center T_Square,We provide you with a place to gain experience in technology fields,A fun and easy place to learn everything new in the field of technology",
    },
    {
      "img": "lib/core/assets/ongoingScreen2.png",
      "title": "Delightful open air",
      "subtitle": "You can choose a course from among the many courses we have available, and sit in a comfortable hall",
    },
    {
      "img": "lib/core/assets/ongoingScreen3.png",
      "title": "Choose your favorite room",
      "subtitle": "You can find the right hall for your current mood, as we have many rooms that meet all needs, and in which the course you have chosen is taught yourself.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryWhite,
        body:
        Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: TextButton(onPressed: (){
                context.push('/login');
              }, child: Text("Skip",style: Styles.comfortaa17.copyWith(color: kPrimaryWhite),)),
            ),
            ongoingpagebuilder(pageController: pageController, pageContent: pageContent),
            ongoingbttomsheet(pageController: pageController, pageContent: pageContent),

          ],
        )
      ),
    );
  }
}
