// ignore: file_names
import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
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
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget>
             [ Image.asset("assets/images/4feyuv9I 1.png", scale: 1.2),
             ],
          ),
          Positioned(
            top: 70,
            left: 285,
            child: Image.asset("assets/images/+.png", scale: 1.2),
          ),
          Positioned(
            top: 210,
            child: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 95,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: PrimaryColor3,
                      boxShadow: [
                        BoxShadow(
                          color: PrimaryColor5,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Text(
                      "Notification",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    child: Text(
                      "Please check your latest house progress",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Positioned(
                    top: 48,
                    child: Text(
                      "updated by Eng. Devanand.",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    child: Text(
                      "Verify Construction Status",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: PrimaryColor1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 320,
            child: RoundedButton1(
              text: "Progress",
              press: () {
                Navigator.push( context, MaterialPageRoute(
                    builder: (context) => ProgressPage()));
              },
            ),
          ),
          Positioned(
            top: 390,
            child: RoundedButton1(
              text: "Customer Care",
              press: () {
                Navigator.push( context, MaterialPageRoute(
                    builder: (context) => CustomerCarePage()));
              },
            ),
          ),
          Positioned(
           top:460,
            child: RoundedButton1(
              text: "Edit Profile",
              press: () {},
            ),
          ),
          Positioned(
            top: 530,
            child: RoundedButton1(
              text: "View House",
              press: () {},
            ),
          ),
          Positioned(
            top: 600,
            child: RoundedButton1(
              text: "Maintanance",
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}


