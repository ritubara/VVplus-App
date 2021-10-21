import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/Pages/Customer%20UI/screens/house_information/house_information.dart';
import 'package:vvplus_app/Pages/Customer%20UI/screens/view%20house%20page/view_house.dart';
import 'package:vvplus_app/Pages/Customer%20UI/utilities/rounded_button.dart';
import 'package:vvplus_app/constants/assets.dart';
import 'package:vvplus_app/constants/colors.dart';

import '../progress page/progress_page.dart';

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
            height: 190,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 39,
                  ),
                  child: Image.asset(
                    image1,
                    scale: 1.5,
                    height: 241,
                    width: 286,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 220,
                    top: 20,
                  ),
                  child: Image.asset(
                    image2,
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
            height: 120,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              RoundedButton1(
                "Progress",
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProgressPage()));
                },
              ),
              RoundedButton1(
                "Customer Care",
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomerCarePage()));
                },
              ),
              RoundedButton1(
                "Edit Profile",
                () {},
              ),
              RoundedButton1(
                "View House",
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewHouse()));
                },
              ),
              RoundedButton1(
                "Maintanance",
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HouseInformation()));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
