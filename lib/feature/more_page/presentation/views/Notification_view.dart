import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/widgets/notification_widget.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(
              width: 113,
            ),
            Text(
              'Notification',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const NotificationWidget(
            titel: 'Ceramics workshop Event',
            day: 'today',
            time: '12:05 pm',
            image: t_square_logo,
          );
        },
        itemCount: 5,
      ),
    );
  }
}
