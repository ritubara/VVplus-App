import 'package:flutter/material.dart';
import 'package:vvplus_app/Pages/Customer%20UI/screens/NewComplaint%20page/new_complaint_page.dart';
import 'package:vvplus_app/Pages/Customer%20UI/utilities/rounded_button.dart';
import 'package:vvplus_app/Pages/Customer%20UI/widgets/appbar_widget.dart';
import 'package:vvplus_app/constants/size.dart';
import 'package:vvplus_app/constants/text_feild.dart';


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
              padding: padding4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton2(
                      text15,
                      () {
                        Navigator.push( context, MaterialPageRoute(
                            builder: (context) => ComplaintPage()));
                      },
                    ),

                  RoundedButton2(
                      text16,
                       () {},
                    ),
                   RoundedButton2(
                      text17,
                       () {},
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