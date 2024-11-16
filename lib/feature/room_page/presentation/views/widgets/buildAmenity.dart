import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

Widget buildAmenityRow(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      children: [
        Icon(icon, color: kPrimaryred),
        const SizedBox(width: 8),
        Text(text),
      ],
    ),
  );
}
