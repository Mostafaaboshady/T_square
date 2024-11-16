import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/style.dart';

class CoursesTextWidget extends StatelessWidget {
  const CoursesTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 15, top: 15, right: 200),
      child: Text(
        "Student Opinion",
        style: Styles.comfortaa20semi
            .copyWith(fontWeight: FontWeight.w900, fontSize: 25),
      ),
    );
  }
}
