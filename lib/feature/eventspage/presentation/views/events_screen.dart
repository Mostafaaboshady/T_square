import 'package:flutter/material.dart';
import 'package:shaghaf_room/feature/eventspage/presentation/views/widgets/events_screen_body.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: EventsScreenBody(),
    ));
  }
}
