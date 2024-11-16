import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/Notification_view.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/contact_us_view.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/profile_view.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 50, bottom: 20, right: 50),
              child: Container(
                height: 190.h,
                width: 60.w,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(t_square_logo), fit: BoxFit.fill)),
              )

              //Image(height: 235.h, width: 140.w, image: AssetImage(t_square_logo)),
              ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileView()));
            },
            child: ListTile(
              leading: Icon(
                Icons.person_outline_outlined,
                color: kPrimaryred,
                size: 22,
              ),
              title: Text('Profile'),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.language,
              color: kPrimaryred,
              size: 22,
            ),
            title: Row(
              children: [
                Text('English'),
                Icon(
                  Icons.arrow_drop_down,
                  color: kPrimaryred,
                  size: 22,
                ),
              ],
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: kPrimaryred,
              size: 22,
            ),
            title: Text('Orders'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationView()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.notifications,
                color: kPrimaryred,
                size: 22,
              ),
              title: Text('Notification'),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.star,
              color: kPrimaryred,
              size: 22,
            ),
            title: Text('Rating'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUsView()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: kPrimaryred,
                size: 22,
              ),
              title: Text('Contact Us'),
            ),
          ),
        ],
      ),
    );
  }
}
