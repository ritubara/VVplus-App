import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/screens/progress%20page/progress_body.dart';
import 'package:vvplus_app/utilities/bottom_navbar.dart';

class ProgressPage extends StatefulWidget{
  @override
  @override
  ProgressPageState createState() => ProgressPageState();
}

class ProgressPageState extends State<ProgressPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress",
          style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
        ),
        toolbarHeight: 107,
        titleTextStyle: TextStyle(color: PrimaryColor3),
        backgroundColor: PrimaryColor1,
        centerTitle: true,
      ),
      body: ProgressBody(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

}