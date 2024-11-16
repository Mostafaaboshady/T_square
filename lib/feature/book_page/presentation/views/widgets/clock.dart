import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class ClockScreen extends StatefulWidget {
  @override
  _ClockScreenState createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  String _formattedTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    final hour = now.hour > 12 ? now.hour - 12 : now.hour;
    final period = now.hour >= 12 ? 'PM' : 'AM';

    setState(() {
      _formattedTime =
          '${_twoDigits(hour == 0 ? 12 : hour)}:${_twoDigits(now.minute)}:${_twoDigits(now.second)} $period';
    });
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // إطار الساعة التناظرية مع إزالة الخلفية.

        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagecloc),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, // ظل خلف الساعة.
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: AnalogClock(
                  dateTime: DateTime.now(),
                  isKeepTime: true,
                  dialColor: Colors.transparent,
                  dialBorderColor: Colors.transparent,
                  markingColor: Colors.white,
                  hourNumberColor: Colors.white,
                  hourNumbers: const [
                    '',
                    '',
                    '3',
                    '',
                    '',
                    '6',
                    '',
                    '',
                    '9',
                    '',
                    '',
                    '12'
                  ],
                  hourHandColor: Colors.white,
                  minuteHandColor: Colors.white,
                  secondHandColor: kPrimaryred,
                  centerPointColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Text(
          _formattedTime,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Training Room",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff111111),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 16,
                          color: kPrimaryred,
                        ),
                        SizedBox(
                          width: 1.5,
                        ),
                        Text(
                          "Date",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262626),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "18/2/2024",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later,
                          size: 16,
                          color: kPrimaryred,
                        ),
                        SizedBox(
                          width: 1.5,
                        ),
                        Text(
                          "Time",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262626),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "09:00 Am",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.event_seat,
                          size: 16,
                          color: kPrimaryred,
                        ),
                        SizedBox(
                          width: 1.5,
                        ),
                        Text(
                          " Seats",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262626),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "x1",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 16,
                          color: kPrimaryred,
                        ),
                        SizedBox(
                          width: 1.5,
                        ),
                        Text(
                          "Deposit",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262626),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "50.00 LE",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 16,
                          color: kPrimaryred,
                        ),
                        SizedBox(
                          width: 1.5,
                        ),
                        Text(
                          "The rest of the money",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262626),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "30.00 LE",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.coffee,
                          size: 16,
                          color: kPrimaryred,
                        ),
                        SizedBox(
                          width: 1.5,
                        ),
                        Text(
                          "Coffee",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262626),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "20.00 LE",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4E4E4E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Booking Status",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff262626),
                      ),
                    ),
                    Text(
                      "Paid",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kPrimaryred,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
