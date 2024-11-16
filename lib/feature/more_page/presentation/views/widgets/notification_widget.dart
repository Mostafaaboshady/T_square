import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.titel,
    this.kcoloer,
    required this.day,
    required this.time,
    required this.image
  });

  final String titel;
  final String day;
  final String time;
  final dynamic kcoloer;
  final String image; // مسار الصورة سيكون عبارة عن String

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(image),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titel,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(day,style: TextStyle(fontSize: 16),),
                  SizedBox(width: 8),
                  Text(time,style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Divider(
            color: Colors.grey[300],
            thickness: 2,
            height: 2,
          ),
        ),
      ],
    );
  }
}