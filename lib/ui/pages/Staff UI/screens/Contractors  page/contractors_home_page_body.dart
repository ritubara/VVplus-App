import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/Contractors%20%20page/Daily%20Manpower%20page/daily_manpower_page.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

class ContractorsBody extends StatelessWidget{
  final Widget child;

  const ContractorsBody({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32,left: 45,right: 35),
            child: Container(
              alignment: Alignment.center,
              height: 130,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: PrimaryColor3,
                boxShadow: const [
                  BoxShadow(
                    color: PrimaryColor5,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      "Notification",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              RoundedButtonHome("Daily Manpower", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DailyManpowerPage()));
              }),
            ],
          ),
        ],
      ),
    );
  }

}