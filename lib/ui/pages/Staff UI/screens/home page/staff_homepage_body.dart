import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/widgets/Utilities/homepage_logo.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

class HomeBody extends StatelessWidget{
  final Widget child;

  const HomeBody({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HomePageLogo(),
          Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "You have 3 approval \nrequests.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
                  ),
                 RoundedButton6("View Approval Requests ",
                         (){}
                         ),

                ]
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              RoundedButtonHome(
                "Purchase",
                    () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProgressPage()));*/
                },
              ),
              RoundedButtonHome(
                "Store",
                    () {
                 /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomerCarePage()));*/
                },
              ),
              RoundedButtonHome(
                "Sales",
                    () {},
              ),
              RoundedButtonHome(
                "Contractors",
                    () {
                /*  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewHouse()));*/
                },
              ),
              RoundedButtonHome(
                "Payroll not on Dataman",
                    () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HouseInformation()));*/
                },
              ),
              RoundedButtonHome(
                "Marketing To Eng. not on Dataman",
                    () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HouseInformation()));*/
                },
              ),
              RoundedButtonHome(
                "Approval and Request not a Dataman",
                    () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HouseInformation()));*/
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}