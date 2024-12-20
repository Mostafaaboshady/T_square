import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/eventspage/presentation/views/widgets/events_contaniar.dart';

class EventsGridview extends StatelessWidget {
   EventsGridview({super.key});
  List <String> name = [
    "Full stack ",
    "AI ",
    "Graphic Desien",
    "Robotics",
    "Flutter ",
    "Computer Essentials",
    "Graphic Desien ",
    "Full stack ",
    "Flutter ",
    "Robotics ",

  ];
  List  <String> image = [
    Fullstack1,AI,GraphicDesien1,Robotics,flutter1,computer,GraphicDesien2,
    Fullstack2,flutter2,Robotics2

  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all( 10),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 30, crossAxisSpacing: 30, crossAxisCount: 2),
          itemBuilder: (context, index) {
            return  EventsContaniar(eventsimage: image[index], eventsname:name[index],);
          },
          itemCount: image.length),
    ));
  }
}
