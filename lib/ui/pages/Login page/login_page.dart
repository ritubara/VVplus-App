import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/screens/homepage/home_page.dart';
import 'package:vvplus_app/ui/Pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/Pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';
import 'package:vvplus_app/ui/widgets/constants/text_feild.dart';

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
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
              color: PrimaryColor3,
            ),
            child: Stack(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(
                    left: 47,
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
                _buildBottomPart(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildBottomPart(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Padding(
      padding: const EdgeInsets.only(top: 228,left: 37),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text(
              text1,
              style: t1Style(),
            ),

            const SizedBox(height: 10,),

             Text(
              text2,
              style: simpleTextStyle2(),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20,),

            Container(

              padding: padding2,
              color: PrimaryColor3,
              height: 51.0,

              child: TextFormField(
                keyboardType: TextInputType.phone,
                style:const TextStyle(
                  color: TextColor4,
                  decorationColor: decorationColor1,
                ),
                decoration: textFieldInputDecorationWithCountryCode(),
              ),
            ),

            const SizedBox(height: 20,),

            Text(
              text3,
              style: t2Style(),
              textAlign: TextAlign.center,
            ),

            Text(
              text4,
              style: t2Style(),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 17,),

             Row(
               children: [
               Padding(
               padding: padding3,

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
              height: 55,
              width: 500,
              padding: padding2,
              decoration: decoration1(),
              child: Center(
                child: OTPInputDecoration(),
              ),
            ),

            const SizedBox(height: 46,),

            Container(
              child: Row(
                children: [
                  RoundedButton3("Sign In",
                          (){Navigator.push( context, MaterialPageRoute(
                              builder: (context) => HomePage()));}
                          ),
                  SizedBox(width: 20,),
                  RoundedButton3("Sign In Staff",(){}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}