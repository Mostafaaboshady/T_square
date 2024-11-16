import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/roundbutton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/constants.dart';

class ongoingbttomsheet extends StatelessWidget {
  final PageController pageController;
  final List pageContent;

  const ongoingbttomsheet({super.key, required this.pageController, required this.pageContent});

  @override
  Widget build(BuildContext context) {
    return

      Container(
          color: kPrimaryWhite,
          alignment: Alignment.center,
          height: 156.h,
          child: Column(
            children: [

              SmoothPageIndicator(
                controller: pageController,
                count: pageContent.length,
                effect: const WormEffect(
                  dotHeight: 15,
                  dotWidth: 15,
                  dotColor: Colors.black12,
                  activeDotColor: kPrimaryred,
                  type: WormType.thinUnderground,
                ),
              ),
              SizedBox(height: 24.h,),
              RoundButtonWithIcon(icon: Icons.navigate_next, color: Colors.black12, onPressed: (){
                 if (pageController.page!.toInt() == pageContent.length - 1) {
                   context.push('/login');
                 }
                 else{
                   pageController.nextPage(duration: const Duration(milliseconds: 300),
                     curve: Curves.ease,);
                 }

              })
            ],
          )
      );

  }
}
