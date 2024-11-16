import 'package:flutter/material.dart';
class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key, required this.titel, required this.icon, this.kcoloer});
  final String titel;
  final IconData icon;
  final dynamic kcoloer;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, size: 24, color: kcoloer), // أيقونة يتم تمريرها هنا
          title: Text(titel),
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
