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
TextStyle containerTextStyle4() {
  return TextStyle1(boxDecorationTextColor3,12,FontWeight.w500);
}
TextStyle containerTextStyle5() {
  return TextStyle1(boxDecorationTextColor4,12,FontWeight.w500);
}
TextStyle containerTextStyle6() {
  return TextStyle1(boxDecorationTextColor2,20,FontWeight.w500);
}
