import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/components/assets.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/components/size.dart';
import 'package:vvplus_app/components/text_feild.dart';
import 'package:vvplus_app/components/widgets.dart';
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
    Size size = SizeConfig.getSize(context);
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
                    image1,
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
            height: 93,
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text6,
                    style: simpleTextStyle5(),
                  ),
                  Text(
                    text7,
                    style: simpleTextStyle4(),
                  ),
                  Text(
                    text8,
                    style: simpleTextStyle4(),
                  ),
                  Text(
                    text9,
                    style: simpleTextStyle6(),
                  ),
                ]
      ),
          ),

         Column(
      mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
           RoundedButton1(
              text: text10,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProgressPage()));
              },
            ),
           RoundedButton1(
              text: text11,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CustomerCarePage()));
              },
            ),
              RoundedButton1(
              text: text12,
              press: () {},
            ),
           RoundedButton1(
              text: text13,
              press: () {},
            ),
          RoundedButton1(
              text: text14,
              press: () {},
            ),

      ],
      ),
      ],
      ),
    );
  }
}
