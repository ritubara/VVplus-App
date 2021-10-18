import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';
import 'package:vvplus_app/screens/view%20house%20page/view_house.dart';
import '../progress page/progress_page.dart';
import 'package:vvplus_app/utilities/rounded_button.dart';
import '../Customercare page/customer_care_page.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
      height: 200,

            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 39,
                  ),
                  child: Image.asset(
                    "assets/images/4feyuv9I 1.png",
                    scale: 1.5,
                    height: 241,
                    width: 286,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 240,
                    top: 25,
                  ),
                  child: Image.asset(
                    "assets/images/+.png",
                    scale: 1.5,
                    height: 134,
                    width: 68,
                  ),
                ),

              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 93,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: PrimaryColor3,
              boxShadow: const [
                BoxShadow(
                  color: PrimaryColor5,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "Please check your latest house progress",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "updated by Eng. Devanand.",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Verify Construction Status",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: PrimaryColor1),
                  ),
                ]
      ),
          ),

         Column(
      mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
           RoundedButton1(
              text: "Progress",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProgressPage()));
              },
            ),
           RoundedButton1(
              text: "Customer Care",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CustomerCarePage()));
              },
            ),
              RoundedButton1(
              text: "Edit Profile",
              press: () {},
            ),
           RoundedButton1(
              text: "View House",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ViewHouse()));
              },
            ),
          RoundedButton1(
              text: "Maintanance",
              press: () {},
            ),

      ],
      ),
      ],
      ),
    );
  }
}
