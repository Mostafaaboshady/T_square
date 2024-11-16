import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/widget/notificationbell_widget.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/widgets/setting_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SettingBody(),
    );
  }
}
