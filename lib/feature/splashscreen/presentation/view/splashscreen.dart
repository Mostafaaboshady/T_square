import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/constants.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToHome(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryWhite,
        body: Center(
          child: Padding(
              padding: EdgeInsets.only(
                  top: 76.h, left: 50.w, right: 70.w, bottom: 32.h),
              child: Container(
                  height: 120.h,
                  width: 580.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(logo_t))))),
        ),
      ),
    );
  }
}

void navigateToHome(BuildContext context) {
  Future.delayed(
    const Duration(seconds: 3),
    () {
      GoRouter.of(context).pushReplacement(AppRouter.kongiung);
    },
  );
}
