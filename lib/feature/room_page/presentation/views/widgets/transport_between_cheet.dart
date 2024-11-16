import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widgets/screen1_bottom_cheet.dart';
import 'package:shaghaf_room/feature/room_page/presentation/views/widgets/screen2_bottom_cheet.dart';

void Transport(BuildContext context, int screenNumber) {
  showMaterialModalBottomSheet(
    context: context,
    builder: (context) => screenNumber == 1
        ? const Screen1BottomCheet()
        : const Screen2BottomCheet(),
  );
}