import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/more_page/presentation/views/widgets/OrdersBuilder.dart';
class OrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: OrdersBuilder(),
      ),
    );
  }
}