import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/offers_category/presentation/view/widget/offers_screen_body.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white ,
        body: OffersScreenBody(),
      ),
    );
  }
}
