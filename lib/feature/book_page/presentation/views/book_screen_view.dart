import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/widgets/DateAndTime.dart';
class BookScreenView extends StatelessWidget {
  const BookScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DateAndTime(),
    );
  }
}
