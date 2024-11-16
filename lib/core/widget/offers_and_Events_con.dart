import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';

class OffersAndEventsCon extends StatelessWidget {
  const OffersAndEventsCon(
      {super.key,
      required this.text,
      required this.text2,
      required this.Image,
      required this.onpressed});
  final String text;
  final String text2;
  final String Image;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 206.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 173,
            height: 108,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage(offers), fit: BoxFit.fill)),
          ),
          Container(
            width: 173,
            height: 78,
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
                  padding: const EdgeInsets.only(left: 8, top: 4),
                  child: Text(
                    text,
                    style: Styles.comfortaa14,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 0),
                      child: Text(text2, style: Styles.comfortaa8),
                    ),
                    const SizedBox(width: 2),
                    IconButton(
                        onPressed: () {
                          onpressed!();
                        },
                        icon: const Icon(Icons.arrow_circle_right,
                            color: kPrimaryred, size: 32)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
