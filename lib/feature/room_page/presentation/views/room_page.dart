import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/room_box.dart';
class RoomPage extends StatelessWidget {
  RoomPage({super.key,});

  List  <String> reslt = [
     "Full stack course",
    "C++ course",
     "PFA course",
   "Flutter course",
   "AI course",
   "Graphic Desien course",
    "Digital Marketing course",
  ];
  List  <String> reslte = [
 full_stack2,
 c,
   pfa,
 flutterimage,
 ai,
  desien,
   markiting,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Courses",
          style: TextStyle(fontFamily: "Comfortaa"),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kHomepage,
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return RoomBox(title: reslt[index], image:reslte[index] );
         },
        itemCount: reslt.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

