import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/components/text_feild.dart';
import 'package:vvplus_app/components/widgets.dart';
import 'package:vvplus_app/utilities/rounded_button.dart';

class CustomerCarePage extends StatefulWidget{
  
  @override
  _CustomerCarePageState createState() => _CustomerCarePageState();
}

class _CustomerCarePageState extends State<CustomerCarePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMain(appText1),
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedButton2(
                        text: text15,
                        press: () {},
                      ),

                    RoundedButton2(
                        text: text16,
                        press: () {
                          Navigator.push( context, MaterialPageRoute(
                              builder: (context) => CustomerCarePage()));
                        },
                      ),
                     RoundedButton2(
                        text: text17,
                        press: () {},
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}