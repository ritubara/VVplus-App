import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/cheque%20entry/Custom_Tab_Bar_Item/cleared.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/cheque%20entry/Custom_Tab_Bar_Item/deposit.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/cheque%20entry/Custom_Tab_Bar_Item/receive.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/cheque%20entry/custom_tab_bar.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';

class ChequeEntryBody extends StatelessWidget {
  const ChequeEntryBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: SizedBox(
              height: 1000,
              child: Stack(
                children: [
                  clearButton(),
                  const TabBarView(children: [

                    ChequeEntryReceiveBody(),

                    ChequeEntryDepositBody(),

                    ChequeEntryClearedBody(),
                  ],
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 60),
                    child: CustomTabBar(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}