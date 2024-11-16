import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/dots.dart';
  import 'package:shaghaf_room/feature/onboarding/presentation/view/widget/roundbutton.dart';
import 'package:shaghaf_room/main.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/style.dart';

class onging extends StatelessWidget {
  const onging({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child: Scaffold(
        backgroundColor: kPrimaryWhite ,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 16.h),
                  alignment: Alignment.centerRight,
                  child: InkWell(onTap:(){context.go('/login');},child:  Text("skip",style: Styles.comfortaa17.copyWith(color: Colors.black),))),
              SizedBox(height: 60.h,),
              Container(
                width: 338.w,
                height: 335.h,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(image: AssetImage(ongoing1),fit: BoxFit.fill)
                ),
              ),
              SizedBox(height: 24.h,),
              Text("Your favorite place to work",style: Styles.comfortaa20semi.copyWith(color:kPrimaryred ),),
              SizedBox(height: 24.h,),
              Container(
                // height: 72.h,
                width: 342.w,
                alignment: Alignment.center,
                child: Text("In The Center T_Square,We provide you with a place to gain experience in technology fields,A fun and easy place to learn everything new in the field of technology"
                  ,style: Styles.comfortaa14.copyWith(color:Colors.black,),
              ),),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const DotWidget(color: kPrimaryOrange),
                  SizedBox(width: 9.w,),
                  DotWidget(color: kPrimaryOrange.withAlpha(128)),
                  SizedBox(width: 9.w,),
                  DotWidget(color: kPrimaryOrange.withAlpha(128)),
                ],
              ),
              SizedBox(height: 24.h,),
              Container(
                  child: RoundButtonWithIcon(icon: Icons.navigate_next, color: Colors.black12, onPressed: (){
                    context.push('/ongoing2');
                  }))

            ],
          ),
        ),
      ));
  }
}
