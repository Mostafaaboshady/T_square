import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.RoomsPath);
          },
          child: Container(
            width: 342.w,
            height: 200.h,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Courses',
                    style: TextStyle(
                        fontSize: 24,
                        color: kPrimaryWhite,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(width: 56),
                Center(
                  child: Image(
                    height: 150,
                    width: 150,
                    image: const AssetImage(ongoing2),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kOffers);
              },
              child: Container(
                width: 163.w,
                height: 180.h,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Offers',
                        style: TextStyle(
                            fontSize: 20,
                            color: kPrimaryWhite,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(height: 4),
                    Image(
                      height: 120.h,
                      width: 120.w,
                      image: AssetImage(test),
                    ),
                    const SizedBox(width: 36),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kEvents);
              },
              child: Container(
                width: 163.w,
                height: 180.h,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                        'Events',
                        style: TextStyle(
                            fontSize: 20,
                            color: kPrimaryWhite,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Image(
                      height: 120.h,
                      width: 120.w,
                      image: const AssetImage(ongoing3),
                    ),
                    const SizedBox(width: 36),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
