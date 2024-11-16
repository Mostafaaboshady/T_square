import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/Notification_view.dart';
class NotificationbellWidget extends StatelessWidget {
  const NotificationbellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationView()));
      },
        child: const Icon(Icons.notifications_active, color: kPrimaryred, size: 24));
  }
}
