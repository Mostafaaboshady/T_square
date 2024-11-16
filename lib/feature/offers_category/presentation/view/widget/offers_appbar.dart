import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/core/widget/offers_events_bar.dart';

class OffersAppbar extends StatelessWidget {
  const OffersAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const OffersEventsBar(title: "Offers");
  }
}
