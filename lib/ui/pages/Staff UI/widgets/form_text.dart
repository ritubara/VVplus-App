import 'package:flutter/material.dart';

Padding FormsHeadText(String text){
  return Padding(
    padding:const EdgeInsets.symmetric(horizontal:40),
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
    ),
  );

}