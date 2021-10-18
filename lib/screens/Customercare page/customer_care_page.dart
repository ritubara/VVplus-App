import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/text_feild.dart';
import 'package:vvplus_app/screens/NewComplaint%20page/new_complaint_page.dart';
import 'package:vvplus_app/utilities/rounded_button.dart';
import 'package:vvplus_app/widgets/appbar_widget.dart';

class CustomerCarePage extends StatefulWidget{
  const CustomerCarePage({Key key}) : super(key: key);

  @override
  _CustomerCarePageState createState() => _CustomerCarePageState();
}

class _CustomerCarePageState extends State<CustomerCarePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMain(appText1),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton2(
                      text: text15,
                      press: () {
                        Navigator.push( context, MaterialPageRoute(
                            builder: (context) => ComplaintPage()));
                      },
                    ),

                  RoundedButton2(
                      text: text16,
                      press: () {
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
    );
  }
}