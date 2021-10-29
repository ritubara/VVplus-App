import 'package:flutter/widgets.dart';

class SizeConfig {
  static getHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  static getWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  static getSize(context) {
    return MediaQuery.of(context).size;
  }
}

// size of padding

// padding1,5,6,7 is used in newComplaint screen

var padding1 = const EdgeInsets.only(left: 35,right: 36);
var padding5 = const EdgeInsets.only(left: 50,right: 36,top: 12); // used in dropdownMenu item
var padding6 = const EdgeInsets.only(left: 50,right: 36,top: 5);  // used in dropdownMenu item
var padding7 = const EdgeInsets.only(left: 55,right: 36,top: 10);  // used in dropdownMenu item

// padding2 and 3 is used in login screen

var padding2 = const EdgeInsets.only(left: 1,right: 48);
var padding3 = const EdgeInsets.symmetric(horizontal: 125);

// padding4 is used in customerCare screen

var padding4 = const EdgeInsets.symmetric(horizontal: 40);

//forms padding
var paddingForms = const EdgeInsets.symmetric(vertical: 10);