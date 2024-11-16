import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
class RatingWidget extends StatelessWidget {
   RatingWidget({super.key});
double rati=4.7;
  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 51,
            height: 22,
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.star,color:Colors.yellow ,size: 20,),
                Text(
                  '$rati',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ]
    );
  }
}
