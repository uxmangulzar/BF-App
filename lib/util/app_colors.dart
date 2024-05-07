import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {

  static const kPrimary = Color(0xff8B1FEA);
  static const kPrimaryNew = Color(0xff817aef);
  static const kWhite = Color(0xffffffff);
  static const kLightBlack = Color(0xff171927);
  static const kBGColor= Color(0xfff0f0f0);
  static const kBGGreyColor= Color(0xffDDDDDD);
  static const kRedColor= Color(0xff81182c);

}


//todo Random color List

List<Color> generateRandomColors(int count) {
  List<Color> colors = [];

  for (int i = 0; i < count; i++) {
    colors.add(Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.7));
    // colors.add(Color(Random().nextInt(0xff7555F7)));
  }

  return colors;
}



