import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/Discount%20Approval%20page/discount_approval_home_page.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/Extra%20Work%20Entry/extra_work_entry_home.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/Unit%20Cancellation/unit_cancellation_home_page.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/check%20entry/check_entry.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class SalesBody extends StatelessWidget{
  final Widget child;

  const SalesBody({
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
              RoundedButtonHome("Extra Work Entry", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExtraWorkEntryPage()));
              }),

              RoundedButtonHome("Unit Cancelation", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UnitCancellationPage()));
              }),
              RoundedButtonHome("Cheque Entry/Update", () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CheckEntry()));
                      }),

              RoundedButtonHome("Discount Approval Not on dataman", () {
                Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DiscountApprovalPage()));
              }),
            ],
          ),
        ],
      ),
    );
  }

}