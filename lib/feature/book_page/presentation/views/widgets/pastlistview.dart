import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/widgets/PastBookingScreen.dart';
class PastListView extends StatelessWidget {
  const PastListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: PastBookingScreen(),
        );
      },
    );
  }
}
