import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/Material%20Request%20Entry/material_req_entry.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/place%20purchase%20order/place_purchase_order.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/widgets/Utilities/homepage_logo.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

import 'goods recepit entry/goods_recepit_entry.dart';
import 'material_request_approval/material_request_approval.dart';

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
              RoundedButtonHome("Material Request Entry", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MaterialReqEntry()));
              }),

              RoundedButtonHome("Material Request Approval", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MaterialRequestApproval()));
              }),
              RoundedButtonHome("Place Purchase Order", () {Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlacePurchaseOrder()));}),
              RoundedButtonHome("Goods Recepit Entry", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GoodsRecepitEntryPage()));
              }),
            ],
          ),
        ],
      ),
    );
  }

}