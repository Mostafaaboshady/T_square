import 'package:flutter/material.dart';
import 'package:shaghaf_room/core/utils/constants.dart';
class NameAndImagesCourses  {

  List reslt = [
    ResltNameAndImagesCourses(name: "Full stack course", image: full_stack2),
    ResltNameAndImagesCourses(name: "C++ course", image: c),
    ResltNameAndImagesCourses(name: "PFA course", image: pfa),
    ResltNameAndImagesCourses(name: "Flutter course", image: flutterimage),
    ResltNameAndImagesCourses(name: "AI course", image: ai),
    ResltNameAndImagesCourses(name: "Graphic Desien course", image: desien),
    ResltNameAndImagesCourses(name: "Digital Marketing course", image: markiting),
  ];
}

class ResltNameAndImagesCourses {
  final String name;
  final String image;
  ResltNameAndImagesCourses({required this.name, required this.image});
}