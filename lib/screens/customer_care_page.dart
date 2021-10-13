import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/utilities/rounded_button.dart';

class CustomerCarePage extends StatefulWidget{
  
  @override
  _CustomerCarePageState createState() => _CustomerCarePageState();
}

class _CustomerCarePageState extends State<CustomerCarePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Customer Care ",
          style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
    toolbarHeight: 107,
    titleTextStyle: TextStyle(color: PrimaryColor3),
    backgroundColor: Colors.green,
    ),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 40,
              child: RoundedButton2(
                text: "Make a new complaint",
                press: () {},
              ),
            ),
            Positioned(
              top: 200,
              child: RoundedButton2(
                text: "See progress of previous complaints",
                press: () {
                  Navigator.push( context, MaterialPageRoute(
                      builder: (context) => CustomerCarePage()));
                },
              ),
            ),
            Positioned(
              top: 390,
              child: RoundedButton2(
                text: "Make a complaint against an employee",
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}