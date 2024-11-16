import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';

class DetailsBottomContanair extends StatelessWidget {
  const DetailsBottomContanair({super.key});
  static var comfortaa17 =
      GoogleFonts.comfortaa(fontSize: 16.sp, color: Colors.white);
  static var comfortaa16 =
      GoogleFonts.comfortaa(fontSize: 16.sp, color: kPrimaryred);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2), blurRadius: 20, color: Colors.black26)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text("200.0 EGP/Person", style: comfortaa16),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Container(
              width: 131,
              height: 38,
              decoration: BoxDecoration(
                color: kPrimaryred,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text("Book Now", style: comfortaa17),
              ),
            ),
          )
        ],
      ),
    );
  }
}
