import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const RoundButtonWithIcon({
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: color,
        // padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      ),
      child: Icon(
        icon,
        size: 50.sp,
        color: Colors.white, // Adjust the icon color as needed
      ),
    );
  }
}