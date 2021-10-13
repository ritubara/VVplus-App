import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
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
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: PrimaryColor3,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .90,
                child: Image.asset("assets/images/4feyuv9I 1.png"),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .01,
              right: .01,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("assets/images/+.png"),
              ),
            ),
            _buildBottomPart(context),
          ],
        ),
      ),
    );
  }
  Widget _buildBottomPart(BuildContext context) {
    return Positioned(
      top: 240,
      left: 27,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text(
              "Login",
              style: simpleTextStyle(24),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Let's explore your dream house",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 1,right: 48),
              decoration: BoxDecoration(
                color: PrimaryColor3,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child:TextFormField(
                  keyboardType: TextInputType.number,
                  style: simpleTextStyle(18),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: PrimaryColor2),
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Mobile Number",
                    hintStyle: const TextStyle(
                      color: PrimaryColor4,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: PrimaryColor2),
                        borderRadius: BorderRadius.circular(10)),
                    prefix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '(+91)',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              "    You will receive an SMS verification that may apply message",
              style: TextStyle(
                fontSize: 12,
                color: PrimaryColor2,
                // fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "    and data rates.",
              style: TextStyle(
                fontSize: 12,
                color: PrimaryColor2,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 17,),
            const Text(
              "                               Send OTP",
              style: TextStyle(
                fontSize: 18,
                color: PrimaryColor2,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(left: 1,right: 48),
              decoration: decoration1(),
              child: Center(
                child:TextFormField(
                  keyboardType: TextInputType.number,
                  style: simpleTextStyle(18),
                  decoration: textFieldInputDecoration("Enter OTP"),
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
                width: MediaQuery.of(context).size.width * .88,
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: PrimaryColor3,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
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