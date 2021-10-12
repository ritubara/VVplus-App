import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
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
            color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .90,
                child: Image.asset("assets/images/image1.jpg"),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .00001,
              right: .01,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: Image.asset("assets/images/image2.png"),
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
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                  child:TextFormField(
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter Mobile Number",
                      hintStyle: const TextStyle(
                        color: Colors.black45,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
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
                color: Colors.black,
               // fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "    and data rates.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 17,),
                const Text(
                  "                               Send OTP",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.only(left: 1,right: 48),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child:TextFormField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    fillColor: const Color(0XF7F7F7FF),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    prefix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                    hintText: "Enter OTP",
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 46,),
            GestureDetector(
              onTap: () {
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
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
                        color: Colors.white,
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