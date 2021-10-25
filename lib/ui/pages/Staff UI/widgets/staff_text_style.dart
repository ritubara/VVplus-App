import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

TextStyle TextStyle1(var color1 , double size1,var fontWeightValue) {
  return TextStyle(color: color1, fontSize: size1 ,fontWeight: fontWeightValue,);
}

TextStyle containerTextStyle1() {
  return TextStyle1(boxDecorationTextColor1,18,FontWeight.bold);
}
TextStyle containerTextStyle2() {
  return TextStyle1(boxDecorationTextColor1,12,FontWeight.w500);
}
TextStyle containerTextStyle3() {
  return TextStyle1(boxDecorationTextColor2,12,FontWeight.w500);
}