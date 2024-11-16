import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/authenticator/presentation/views/widgets/textFormTempl.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/widgets/profil_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const
         Row(
          children: [
            SizedBox(width: 115,),
            Text('Profile',style: TextStyle(color: Colors.black),),

          ],
        ),
      ),
      body: ProfilWidget(),
    );
  }
}
