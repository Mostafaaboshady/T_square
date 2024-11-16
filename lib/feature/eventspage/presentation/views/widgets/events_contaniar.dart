import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/offers_and_Events_con.dart';

class EventsContaniar extends StatelessWidget {
  const EventsContaniar({super.key, required this.eventsimage, required this.eventsname});
final String eventsimage ;
  final String eventsname ;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 173.w,
      height: 200.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 173.w,
              height: 160.h,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(eventsimage), fit: BoxFit.fill)),
            ),
          ),
          Expanded(
            child: Container(
              width: 173.w,
              height: 80.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 4,bottom: 5),
                    child: Text(
                      '$eventsname',
                      style: Styles.comfortaa14,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 0),
                        child: Text('workshop', style: Styles.comfortaa8),
                      ),
                      const SizedBox(width: 2),
                      IconButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.keventdetilse);
            
                          },
                          icon: const Icon(Icons.arrow_circle_right,
                              color: kPrimaryred, size: 32)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
