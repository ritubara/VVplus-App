import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';

class RoundedButton1 extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;

  const RoundedButton1({
    Key key,
    this.text,
    this.press,
    this.color = PrimaryColor1,
    this.textColor = PrimaryColor3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
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
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.bold)),
    );
  }
}
class RoundedButton2 extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;

  const RoundedButton2({
    Key key,
    this.text,
    this.press,
    this.color = PrimaryColor1,
    this.textColor = PrimaryColor3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor),
        ),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 23),
          textStyle: TextStyle(
              color: textColor, fontSize: 28, fontWeight: FontWeight.bold)),
    );
  }
}
