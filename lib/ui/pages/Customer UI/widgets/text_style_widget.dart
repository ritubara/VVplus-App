import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

TextStyle simpleTextStyle(var color1 , double size1) {
  return TextStyle(color: color1, fontSize: size1 ,fontWeight: FontWeight.bold,);
}


TextStyle t1Style() {
  return simpleTextStyle(PrimaryColor2,18);
}
TextStyle t2Style() {
  return simpleTextStyle(PrimaryColor2,11);
}
TextStyle simpleTextStyle1() {
  return simpleTextStyle(PrimaryColor3,18);
}

TextStyle simpleTextStyle4() {
  return const TextStyle(fontSize: 12);
}

TextStyle simpleTextStyle5() {
  return simpleTextStyle(PrimaryColor2,18);
}
TextStyle simpleTextStyle6() {
  return simpleTextStyle(PrimaryColor1,18);
}
TextStyle simpleTextStyle7() {
  return simpleTextStyle(PrimaryColor2,16);
}

TextStyle simpleTextStyle9(var color1,double size1) {
  return TextStyle(color: color1, fontSize: size1 );
}

TextStyle simpleTextStyle10(var colorof) {
  return TextStyle(color: colorof, fontSize: 14, fontWeight: FontWeight.bold);
}
TextStyle ContainerHeading1() {
  return simpleTextStyle(TextColor2,18);
}
TextStyle containerHeading2() {
  return simpleTextStyle(TextColor3,18);
}
TextStyle ContainerText2() {
  return const TextStyle(
      color: TextColor4, fontSize: 14);
}
TextStyle ContainerText2Bold() {
  return simpleTextStyle(TextColor4,14);
}
TextStyle simpleTextStyle2() {
  return simpleTextStyle9(PrimaryColor2,18 );
}

TextStyle Stepperstyle() {
  return simpleTextStyle(TextColor3, 15);
}
TextStyle phoneTextStyle(){
  return const TextStyle(color: TextColor4, decorationColor: decorationColor1,);
}