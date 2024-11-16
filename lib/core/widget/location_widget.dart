import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: 96,
        height: 27,
        decoration: BoxDecoration(
          color: Colors.redAccent.withOpacity(.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child:const Row(
          children: [
            Icon(
              Icons.location_on_outlined,color:Colors.white ,),
            Text(
              'Location',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
