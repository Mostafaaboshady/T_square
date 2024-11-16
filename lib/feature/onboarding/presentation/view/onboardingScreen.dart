
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/dots.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/roundbutton.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/style.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key, required this.title, required this.bodyText, required this.appRouter});
  final String title;
  final String bodyText;
  final String appRouter;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryWhite,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 16,right: 25,bottom: 67),
              child: InkWell(onTap: (){
                GoRouter.of(context).pushReplacement(AppRouter.kLogin);
              },child: Text("Skip",style: Styles.comfortaa17.copyWith(color: Colors.black))),
            ),
            Container(
              width: 350,
              height: 300,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20,right: 20,bottom: 24),
              child:Image.asset(
                ongoing2,
                fit: BoxFit.fill,

              ),
            ),
            Text(title,style: Styles.comfortaa20semi.copyWith(color:kPrimaryred),),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(25),
              alignment: Alignment.center,
              child: Text(bodyText
                ,style: Styles.comfortaa16.copyWith(color: kPrimaryWhite),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotWidget(color: kPrimaryred.withAlpha(128)),
                const SizedBox(width: 9,),
                const DotWidget(color: kPrimaryred),
                const SizedBox(width: 9,),
                DotWidget(color: kPrimaryred.withAlpha(128)),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(25),
                child: RoundButtonWithIcon(icon: Icons.navigate_next, color: Colors.black12, onPressed: (){
                  GoRouter.of(context).pushReplacement(appRouter);

                }))
          ],
        ),
      ),
    );
  }
}
// AppRouter.kongiung2
// AppRouter.kongiung3
// AppRouter.kLogin
