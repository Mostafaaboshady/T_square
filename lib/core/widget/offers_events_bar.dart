import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/homepage/presentation/views/drawer-page/drawer_body.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/Notification_view.dart';

class OffersEventsBar extends StatelessWidget {
  const OffersEventsBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.5, right: 24.5, top: 30),
      child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 30,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationView()));
                    },
                    icon: const Icon(
                      Icons.notifications_outlined,
                      size: 20,
                    )),
                Text(
                  title,
                  style: Styles.comfortaa20semi,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DrawerBody()));
                    },
                    icon: const Icon(
                      Icons.menu_outlined,
                      size: 20,
                    ))
              ],
            ),
          )),
    );
  }
}
