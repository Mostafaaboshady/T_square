import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/eventspage/events%20details/presentation/view/widgets/details_carsoul.dart';
import 'package:shaghaf_room/feature/eventspage/events%20details/presentation/view/widgets/details_contanair.dart';
class EventsDetailsBody extends StatelessWidget {
  const EventsDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DetailsCarsoul(),
        DetailsContanair(),
      ],
    );
  }
}
