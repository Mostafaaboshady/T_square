import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
import 'package:shaghaf_room/core/utils/style.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/widgets/PastBookingScreen.dart';
import 'package:shaghaf_room/feature/book_page/presentation/views/widgets/clock.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              bottom: 20,
            ),
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              child: Text(
                'Booking History',
                style: Styles.comfortaa20semi
                    .copyWith(fontWeight: FontWeight.w900, fontSize: 25),
              ),
            ),
          ),
          ToggleButtons(
            isSelected: [selectedIndex == 0, selectedIndex == 1],
            onPressed: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            borderRadius: BorderRadius.circular(20),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 60.h, vertical: 10), // تعديل الحجم
                child: Text(
                  'Past',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18, // تغيير حجم النص
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 60.h, vertical: 10), // تعديل الحجم
                child: Text(
                  'Upcoming',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18, // تغيير حجم النص
                  ),
                ),
              ),
            ],
            color: Colors.black, // لون النص العادي
            selectedColor: Colors.white, // لون النص عند التحديد
            fillColor: kPrimaryred, // لون الخلفية عند التحديد
            borderColor: Colors.brown[300], // لون الحدود العادية
            selectedBorderColor: Colors.brown, // لون الحدود عند التحديد
            splashColor: Colors.brown[200], // لون تأثير الضغط
          ),
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: [
                PastBookingScreen(), // محتوى "Past"
                ClockScreen(), // محتوى "Upcoming"
              ],
            ),
          ),
        ],
      ),
    );
  }
}
