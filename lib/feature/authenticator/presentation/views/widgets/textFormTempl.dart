import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormTempl extends StatelessWidget {
   const TextFormTempl({super.key,required this.textInside, required this.iconInside,required this.showPassword});
  final String textInside;
  final IconData iconInside;
  final bool showPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      width: 323.w,
      child: TextFormField(
        obscureText: showPassword,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: Icon(iconInside,size: 20,),
          hintText: textInside,
          iconColor: Colors.black,
          hintStyle: const TextStyle(color: Colors.grey),
          //contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0), 
          contentPadding: const EdgeInsets.symmetric(vertical: 5), // Adjust height
        ),
      ),
    );
  }
}
