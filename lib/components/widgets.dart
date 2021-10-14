import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
  fillColor: const Color(0XF7F7F7FF),
  filled: true,
  enabledBorder: OutlineInputBorder(
  borderSide: const BorderSide(color: PrimaryColor2),
  borderRadius: BorderRadius.circular(10)),
  focusedBorder: OutlineInputBorder(
  borderSide: const BorderSide(color: PrimaryColor2),
  borderRadius: BorderRadius.circular(10)),
  prefix: const Padding(
  padding: EdgeInsets.symmetric(horizontal: 8),
  ),
  hintText: hintText,
  hintStyle: const TextStyle(
  color: PrimaryColor4,
  ),
  );
}

TextStyle simpleTextStyle(final double size1) {
  return TextStyle(color: PrimaryColor2, fontSize: size1 ,fontWeight: FontWeight.bold,);
}

TextStyle simpleTextStyle1(final double size1) {
  return TextStyle(color: PrimaryColor3, fontSize: size1 ,fontWeight: FontWeight.bold,);
}

BoxDecoration decoration1() {
  return BoxDecoration(
    color: PrimaryColor3,
    borderRadius: BorderRadius.circular(12),
  );
}

BoxDecoration decoration2(){                                                       //Boxdecoration for containers
  return BoxDecoration(borderRadius: BorderRadius.circular(5.0),
    color: PrimaryColor3,
    boxShadow: [
      BoxShadow(
        color: PrimaryColor5,
        offset: Offset(0.0, 1.0), //(x,y)
        blurRadius: 6.0,
      ),
    ],
  );
}

TextStyle ContainerHeading1() {
  return TextStyle(
    color: TextColor2, fontSize: 18, fontWeight: FontWeight.bold,);
}
TextStyle ContainerHeading2() {
  return TextStyle(
    color: TextColor3, fontSize: 18, fontWeight: FontWeight.bold,);
}


TextStyle ContainerText2() {
  return TextStyle(
    color: TextColor4, fontSize: 12);
}


TextStyle ContainerText2Bold() {
  return TextStyle(
      color: TextColor4, fontSize: 12,fontWeight: FontWeight.bold);
}

TextStyle H1Style() {
  return simpleTextStyle(24);
}

