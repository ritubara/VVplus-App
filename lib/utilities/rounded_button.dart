import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';
import 'package:vvplus_app/constants/size.dart';

class RoundedButtonInput extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;
  final double size1;
  final double horizontal1;
  final double vertical1;
  final double fontsize1;

  const RoundedButtonInput({
    Key key,
    this.text,
    this.press,
    this.color = PrimaryColor1,
    this.textColor = PrimaryColor3,
    this.size1,
    this.horizontal1, this.vertical1,
    this.fontsize1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * size1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor),

        ),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: horizontal1, vertical: vertical1),
          textStyle: TextStyle(
              color: textColor, fontSize: fontsize1, fontWeight: FontWeight.bold)),
    );
  }
}

// use for login button
RoundedButtonInput RoundedButton1(String text1,var press1) {
  return RoundedButtonInput(
    text: text1,
    press: press1,
    fontsize1: 14,
    size1: 0.8,
    horizontal1: 40,
    vertical1: 20,
  );
}

// use in home page
RoundedButtonInput RoundedButton2(String text1,var press1) {
  return RoundedButtonInput(
    text: text1,
    press: press1,
    fontsize1: 28,
    size1: 0.8,
    horizontal1: 40,
    vertical1: 23,
  );
}

// use for next and skip button
RoundedButtonInput RoundedButton3(String text1,var press1) {
  return RoundedButtonInput(
    text: text1,
    press: press1,
    fontsize1: 14,
    size1: 0.35,
    horizontal1: 40,
    vertical1: 20,
  );
}