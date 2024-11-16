
import 'package:flutter/cupertino.dart';

class RoundedCornerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, 138)
      ..lineTo(171, 200)
      ..lineTo(342, 138)
      ..lineTo(342, 0)
      ..lineTo(0, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant RoundedCornerClipper oldClipper) => true;
}

class RoundedCornerClipper2 extends CustomClipper<Path> {
  @override

  Path getClip(Size size) {
    final path = Path()
// ابدأ من الزاوية اليسرى العليا
      ..moveTo(0, 0)
      ..lineTo(0, size.height) // الزاوية اليسرى السفلى
      ..lineTo(size.width, size.height) // الزاوية اليمنى السفلى
      ..lineTo(size.width, size.height * 0.4) // انحناء من الأعلى
      ..lineTo(size.width * 0.1, 0) // الزاوية العليا اليسرى
      ..close(); // إغلاق المسار
    return path;
  }

  @override
  bool shouldReclip(covariant RoundedCornerClipper2 oldClipper) => true;
}

class RoundedCornerClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
// ابدأ من الزاوية اليسرى العليا
      ..moveTo(0, size.height * 0.4)
      ..lineTo(0, size.height) // الزاوية اليسرى السفلى
      ..lineTo(size.width, size.height) // الزاوية اليمنى السفلى
      ..lineTo(size.width, 0) // الزاوية اليمنى العليا
      ..lineTo(size.width * 0.9, 0) // انحناء من الأعلى
      ..close(); // إغلاق المسار
    return path;
  }

  @override
  bool shouldReclip(covariant RoundedCornerClipper3 oldClipper) => true;
}