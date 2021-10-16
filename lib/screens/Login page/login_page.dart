import 'package:flutter/material.dart';
import 'package:vvplus_app/components/assets.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/components/size.dart';
import 'package:vvplus_app/components/text_feild.dart';
import 'package:vvplus_app/components/widgets.dart';
import 'package:vvplus_app/screens/homepage/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            color: PrimaryColor3,
          ),
          child: Stack(
            children: <Widget>[
              SizedBox(height: 20,width: 20,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    alignment: Alignment.topCenter,
                    child: image1,
                ),
              ),
              Positioned(
                top: height * .01,
                right: .01,
                child: SizedBox(
                  width: width * .3,
                  child: image2,
                ),
              ),
              _buildBottomPart(context),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildBottomPart(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Positioned(
      top: height * .30,
      left: 27,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              text1,
              style: simpleTextStyle(),
            ),
            const SizedBox(height: 10,),
             Text(
              text2,
              style: simpleTextStyle2(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 1,right: 48),
              decoration: decoration1(),
              child: Center(
                child:TextFormField(
                  keyboardType: TextInputType.number,
                  style: simpleTextStyle1(),
                  decoration: textFieldInputDecoration(hintText1),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              text3,
              style: simpleTextStyle3(),
              textAlign: TextAlign.center,
            ),
            Text(
              text4,
              style: simpleTextStyle3(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 17,),
             Row(
               children: [
               Padding(
               padding: EdgeInsets.symmetric(horizontal: 125),
               child: Text(
                 text5,
                 textAlign: TextAlign.center,
                 style: simpleTextStyle2(),
               ),
             ),
               ],
             ),

            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(left: 1,right: 48),
              decoration: decoration1(),
              child: Center(
                child:TextFormField(
                  keyboardType: TextInputType.number,
                  style: simpleTextStyle1(),
                  decoration: textFieldInputDecoration(hintText2),
                ),
              ),
            ),
            const SizedBox(height: 46,),
            GestureDetector(
              onTap: () {
                Navigator.push( context, MaterialPageRoute(
                    builder: (context) => HomePage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: PrimaryColor1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                width: width * .88,
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                    Text(
                      "Sign In",
                      style: simpleTextStyle1(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}