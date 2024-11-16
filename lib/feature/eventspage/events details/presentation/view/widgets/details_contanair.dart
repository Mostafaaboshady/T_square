import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/eventspage/events%20details/presentation/view/widgets/details_bottom_contanair.dart';

class DetailsContanair extends StatelessWidget {
  DetailsContanair({super.key});
  final comfortaa9 = GoogleFonts.comfortaa(
      fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 24),
              child: Text("Details", style: comfortaa9),
            ),
            _buildBullet(
                "We will learn how to make ceramics and use them after that."),
            _buildBullet(
                "The workshop will last for one day and last 3 hours. We will learn about it"),
            _buildBullet(
                "We will learn about the types of clay to differentiate the final result of the product"),
            _buildBullet(
                "How do I make shapes with clay without them cracking?"),
            _buildBullet(
                "We will burn the shapes we made and find out how they burn so that you can use them after that and live with you"),
            SizedBox(
              height: 40.h,
            ),
            const DetailsBottomContanair()
          ],
        ),
      ),
    );
  }
}

Widget _buildBullet(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 35, top: 24),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.circle, size: 8, color: kPrimaryred),
        const SizedBox(width: 8),
        Expanded(
            child: Text(
          text,
          style: Styles.comfortaa10,
        )),
      ],
    ),
  );
}
