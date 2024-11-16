import 'package:flutter/material.dart';
class BuildCategoryWidget extends StatelessWidget {
  const BuildCategoryWidget(
      {super.key, required this.title, required this.imagePath, required this.isSelected});

  final String title;
  final String imagePath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imagePath), // هنا تم تصحيح استخدام الصورة
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.red : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
