import 'package:flutter/material.dart';

class DotPainter extends CustomPainter {
  final Color color;

  DotPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2.0 // Adjust the stroke width as needed
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    const radius = 5.0; // Adjust the radius as needed

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // Repaint only if the color changes
  }
}

class DotWidget extends StatelessWidget {
  final Color color;

  const DotWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DotPainter(color: color),
      size: const Size(10, 10), // Adjust the size as needed
    );
  }
}