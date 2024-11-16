import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/widgets/Advertisement_item.dart';

class AdvertisementListview extends StatelessWidget {
  AdvertisementListview({super.key});
  List<String> images = [
    kw1,
    kf1,
    kw2,
    kg2,
    km1,
    kf2,
    kg1,
  ];
  List<String> names = [
    "أحمد حاتم",
    "عمر عبدالعزيز",
    "أحمد حاتم",
    "أحمد",
    "محمود",
    "عمر عبدالعزيز",
    "أحمد",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 185,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return AdvertisementItem(
                  backgrayned: images[index], review: names[index]);
            },
            itemCount: images.length));
  }
}
