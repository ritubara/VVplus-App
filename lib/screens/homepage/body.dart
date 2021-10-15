import 'package:flutter/material.dart';
import 'package:vvplus_app/screens/homepage/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background();
  }
}
