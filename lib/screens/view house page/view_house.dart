import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/screens/view%20house%20page/view_house_body.dart';

class ViewHouse extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("View house",
      style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
    ),
    toolbarHeight: 107,
    titleTextStyle: TextStyle(color: PrimaryColor3),
    backgroundColor: PrimaryColor1,
    centerTitle: true,
  ),
  body: ViewHouseBody(),
);
  }

}