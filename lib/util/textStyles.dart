import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire/util/colors.dart';

class MyStyle {
  TextStyle get textStyleWhite_14 {
    return TextStyle(color: Colors.white, fontSize: 14);
  }

  TextStyle get textStyleBlack_14 {
    return TextStyle(color: Colors.black, fontSize: 14);
  }

  TextStyle get textStyleWhite_18 {
    return TextStyle(color: MyColors().whiteColor, fontSize: 18);
  }

  TextStyle get textStyleBlack_18 {
    return TextStyle(color: Colors.black, fontSize: 18);
  }

  TextStyle get textStyleBoldBlack_24 {
    return TextStyle(
        color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold);
  }
}
