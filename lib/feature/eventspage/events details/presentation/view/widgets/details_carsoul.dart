import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaghaf_room/core/utils/constants.dart';

class DetailsCarsoul extends StatelessWidget {
  DetailsCarsoul({super.key});
  final comfortaa7 = GoogleFonts.comfortaa(
      fontSize: 12.sp, fontWeight: FontWeight.w500, color: Colors.white);

  final List imgList = [t_square_logo];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return CarouselSlider(
          options: CarouselOptions(
            height: 356,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            autoPlay: false,
          ),
          items: imgList
              .map((item) => Stack(
                    children: [
                      Container(
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.fill,
                          height: double.infinity,
                          width: double.infinity,
                        )),
                      ),
                      Positioned(
                          top: 286,
                          left: 24,
                          child: Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text("Mansoura", style: comfortaa7),
                            ),
                          )),
                      Positioned(
                          top: 34,
                          left: 360,
                          child: Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Icon(Icons.favorite, color: kPrimaryred),
                            ),
                          ))
                    ],
                  ))
              .toList(),
        );
      },
    );
  }
}
