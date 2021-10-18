import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';

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

InputDecoration textFieldInputDecoration2(String hintText) {
  return InputDecoration(
    fillColor: PrimaryColor3,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: PrimaryColor2),
        borderRadius: BorderRadius.circular(5)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: PrimaryColor2),
        borderRadius: BorderRadius.circular(5)),
    prefix: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
    ),
    hintText: hintText,
    hintStyle: const TextStyle(
      color: PrimaryColor2,
    ),
  );
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

BoxDecoration decoration3() {
  return BoxDecoration(
    color: PrimaryColor3,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: PrimaryColor2,width: 1),
  );
}
