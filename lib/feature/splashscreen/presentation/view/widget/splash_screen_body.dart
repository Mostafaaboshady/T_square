import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotoenbording();
  }

  gotoenbording() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kongiung);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: 95,
            height: 160,
          )),
          //  child: const Image(image: AssetImage(logo)))),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 190, right: 190),
            child: LoadingIndicator(
                indicatorType: Indicator.ballPulse,
                colors: [Color(0xffcc1b24)],
                strokeWidth: 4.0,
                pathBackgroundColor: Colors.black),
          )
        ],
      ),
    );
  }
}
