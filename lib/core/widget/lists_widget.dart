
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class ListsWidget extends StatelessWidget {
  final GlobalKey<SliderDrawerState> sliderDrawerKey; // مفتاح SliderDrawer

  // تمرير المفتاح من خلال المُنشئ
  const ListsWidget({required this.sliderDrawerKey, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

          sliderDrawerKey.currentState?.openSlider(); // فتح الـ Drawer

      },
      child: Icon(
        Icons.format_list_bulleted,
        color: Colors.white,
        size: 24,
      ),
    );
  }
}