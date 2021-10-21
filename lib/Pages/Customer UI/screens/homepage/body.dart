import 'package:flutter/material.dart';
import 'package:vvplus_app/Pages/Customer%20UI/screens/homepage/background.dart';
import 'package:vvplus_app/constants/size.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = SizeConfig.getSize(context);
    return const Background();
  }
}
