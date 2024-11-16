import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf_room/core/utils/app_router.dart';

class Screen2BottomCheet extends StatefulWidget {
  const Screen2BottomCheet({super.key});

  @override
  _Screen2BottomCheetState createState() => _Screen2BottomCheetState();
}

class _Screen2BottomCheetState extends State<Screen2BottomCheet> {
  int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.all(16),
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select your plan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Column(
            children: [
              RadioListTile(
                value: 1,
                groupValue: index,
                onChanged: (value) {
                  setState(() {
                    index = value as int?;
                  });
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.watch_later,
                      color: index == 1
                          ? const Color.fromRGBO(204, 27, 36, 1)
                          : const Color(0xff6B6B6B),
                    ),
                    const SizedBox(width: 1.5),
                    Text(
                      '60.0 EGP/Hour',
                      style: TextStyle(
                        color: index == 1
                            ? Color.fromRGBO(204, 27, 36, 1)
                            : const Color(0xff6B6B6B),
                      ),
                    ),
                  ],
                ),
                activeColor: index == 1
                    ? Color.fromRGBO(204, 27, 36, 1)
                    : const Color(0xff6B6B6B),
              ),
              RadioListTile(
                value: 2,
                groupValue: index,
                onChanged: (value) {
                  setState(() {
                    index = value as int?;
                  });
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: index == 2
                          ? Color.fromRGBO(204, 27, 36, 1)
                          : const Color(0xff6B6B6B),
                    ),
                    const SizedBox(width: 1.5),
                    Text(
                      '500.0 EGP/Day',
                      style: TextStyle(
                        color: index == 2
                            ? Color.fromRGBO(204, 27, 36, 1)
                            : const Color(0xff6B6B6B),
                      ),
                    ),
                  ],
                ),
                activeColor: index == 2
                    ? Color.fromRGBO(204, 27, 36, 1)
                    : const Color(0xff6B6B6B),
              ),
              RadioListTile(
                value: 3,
                groupValue: index,
                onChanged: (value) {
                  setState(() {
                    index = value as int?;
                  });
                },
                title: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_rounded,
                      color: index == 3
                          ? Color.fromRGBO(204, 27, 36, 1)
                          : const Color(0xff6B6B6B),
                    ),
                    const SizedBox(width: 1.5),
                    Text(
                      '8000.0 EGP/Week',
                      style: TextStyle(
                        color: index == 3
                            ? const Color(0xffF04C29)
                            : const Color(0xff6B6B6B),
                      ),
                    ),
                  ],
                ),
                activeColor: index == 3
                    ? Color.fromRGBO(204, 27, 36, 1)
                    : const Color(0xff6B6B6B),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KBookScreenView);
              },
              child: Text(
                'Select Date',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(204, 27, 36, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
