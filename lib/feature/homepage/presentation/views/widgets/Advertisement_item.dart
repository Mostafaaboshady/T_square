import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/style.dart';

class AdvertisementItem extends StatelessWidget {
  const AdvertisementItem(
      {super.key, required this.backgrayned, required this.review});
  final String backgrayned;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          width: 200.w,
          height: 185,
          child: Column(
            children: [
              Container(
                width: 243,
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(backgrayned)),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12))),
                //       child:
                //           const Image(fit: BoxFit.fill, image: AssetImage(testimagehome2))),
              ),
              Container(
                  alignment: Alignment.center,
                  width: 200.w,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  child: Text(
                    'مع م/$review  ',
                    style: Styles.comfortaa17,
                  )),
            ],
          ),
        ));
  }
}
