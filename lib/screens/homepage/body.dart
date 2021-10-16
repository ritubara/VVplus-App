import 'package:flutter/material.dart';
import 'package:vvplus_app/components/size.dart';
import 'package:vvplus_app/screens/homepage/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = SizeConfig.getSize(context);
    return Background();
  }
}
