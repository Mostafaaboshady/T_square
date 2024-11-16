import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';

class ProfilWidget extends StatelessWidget {
  const ProfilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children:[
            const SizedBox(
              height: 24,
            ),

            Text(
              "Full Name",
              style: Styles.comfortaa14,
            ),
            const SizedBox(height: 10,),
            const TextFormTempl(
              textInside: "Enter your Full Name",
              iconInside: Icons.person_outline_rounded,
              showPassword: false,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Phone Number",
              style: Styles.comfortaa14,
            ),
            const SizedBox(height: 10,),
            const TextFormTempl(
              textInside: "Enter your Phone number",
              iconInside: Icons.phone,
              showPassword: false,
            ),

            const SizedBox(
              height: 24,
            ),
            Text(
              "Change Possword",
              style: Styles.comfortaa14,
            ),
            const SizedBox(height: 10,),
            const TextFormTempl(
              textInside: "Enter your Possword",
              iconInside: Icons.lock_outline_rounded,
              showPassword: true,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Confirm Possword",
              style: Styles.comfortaa14,
            ),
            const SizedBox(height: 10,),
            const TextFormTempl(
              textInside: "Confirm your posswrd",
              iconInside: Icons.lock_outline_rounded,
              showPassword: false,
            ),
          ]
      ),
    );
  }
}
