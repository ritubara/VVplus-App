import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/Phase%20to%20Phase%20Transfer/phase_to_phase_transfer_home.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/stock%20issue%20entry/store_issue_entry_home.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/stock%20receive%20entry/stock_receive_entry_home.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class StorePageBody extends StatelessWidget{
  final Widget child;

  const StorePageBody({
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
              RoundedButtonHome("Stock Recieve Entry",
                      () {Navigator.push(context, MaterialPageRoute(
                                builder: (context) => StockReceiveEntryPage()));
                      }),
              RoundedButtonHome("Stock Issue Entry",
                      () {Navigator.push(context, MaterialPageRoute(
                          builder: (context) => StockIssueEntryPage()));}),
              RoundedButtonHome("Phase to Phase Transfer",
                      () {Navigator.push(context, MaterialPageRoute(
                          builder: (context) => PhaseToPhaseTransferPage()));}),
              RoundedButtonHome("Branch to Branch Send", () {}),
              RoundedButtonHome("Branch to Branch Recieve", () {}),
            ],
          ),
        ],
      ),
    );
  }

}