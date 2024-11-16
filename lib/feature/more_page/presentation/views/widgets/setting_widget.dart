import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class SettingWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final dynamic screen;
  SettingWidget(
      {super.key, required this.text, required this.icon, this.screen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return screen;
            }));
            // return screen;
          },
          child: ListTile(
            leading: Icon(icon,
                size: 16, color: kPrimaryred), // أيقونة يتم تمريرها هنا
            title: Text(
              text,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Divider(
            color: Colors.grey[300], // الخط تحت العنصر بلون رصاصي خفيف
            thickness: 2,
            height: 2,
          ),
        ),
      ],
    );
  }
}
