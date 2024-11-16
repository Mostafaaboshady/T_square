import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/style.dart';

import '../utils/constants.dart';

class Smallbutton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final TextStyle? textStyle;
  final double sheight;
  final double swidth;

  const Smallbutton({
    Key? key,
    required this.text,
    required this.swidth,
    required this.sheight,
    this.textColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kPrimaryred,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        alignment: Alignment.center,
        width: swidth,
        height: sheight,
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
