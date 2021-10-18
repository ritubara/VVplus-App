import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';

TextStyle simpleTextStyle(var color1 , double size1) {
  return TextStyle(color: color1, fontSize: size1 ,fontWeight: FontWeight.bold,);
}
TextStyle simpleTextStyle9(var color1,double size1) {
  return TextStyle(color: color1, fontSize: size1 );
}
TextStyle simpleTextStyle4() {
  return const TextStyle(fontSize: 12);
}

TextStyle t1Style() {
  return simpleTextStyle(PrimaryColor2,18);
}
TextStyle t2Style() {
  return simpleTextStyle(PrimaryColor2,12);
}
TextStyle simpleTextStyle1() {
  return simpleTextStyle(PrimaryColor3,18);
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

TextStyle simpleTextStyle10() {
  return TextStyle(color: Colors.black45, fontSize:14,fontWeight: FontWeight.bold);
}
TextStyle simpleTextStyle11() {
  return TextStyle(
      color: Colors.black45, fontSize: 12, fontWeight: FontWeight.bold);
}
  TextStyle simpleTextStyle12() {
    return TextStyle(color: Colors.black45, fontSize:18,fontWeight: FontWeight.bold);
  }
TextStyle simpleTextStyle13() {
  return TextStyle(color: Colors.green, fontSize:14,fontWeight: FontWeight.bold);
}
TextStyle simpleTextStyle14() {
  return TextStyle(color: Colors.blueAccent, fontSize:14,fontWeight: FontWeight.bold);
}

TextStyle ContainerHeading1() {
  return simpleTextStyle(TextColor2,18);
}
TextStyle ContainerHeading2() {
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
