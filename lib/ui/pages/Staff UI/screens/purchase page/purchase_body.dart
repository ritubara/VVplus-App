import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/widgets/Utilities/homepage_logo.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class PurchaseBody extends StatelessWidget{
  final Widget child;

  const PurchaseBody({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = SizeConfig.getSize(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: EdgeInsets.only(top: 32,left: 45,right: 35),
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
              RoundedButtonHome("Material Request Entry", () {}),
              RoundedButtonHome("Material Request Approval", () {}),
              RoundedButtonHome("Place Purchase Order", () {}),
              RoundedButtonHome("Goods Recepit Entry", () {}),
            ],
          ),
        ],
      ),
    );
  }

}