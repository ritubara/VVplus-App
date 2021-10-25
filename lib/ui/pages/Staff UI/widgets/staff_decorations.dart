import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';


BoxDecoration DecorationForms() {
  return BoxDecoration(
    color: PrimaryColor8,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: PrimaryColor9,width: 1),

  );
}
class InformationBoxContainer1 extends StatefulWidget{
  @override
  _InformationBoxContainer1State createState() => _InformationBoxContainer1State();
}

class _InformationBoxContainer1State extends State<InformationBoxContainer1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: Container(
        alignment: Alignment.center,
        height: 92,
        width: SizeConfig.getWidth(context),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16,top: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text(
                    "Ball Valve UPVC\n1’’x1/2’’",
                    style: containerTextStyle1(),
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Order Qty.:",
                        style: containerTextStyle2(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          "20 Pc",
                          style: containerTextStyle2(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50,top: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            "Dept: Store",
                            style: containerTextStyle3(),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: Image.asset(icon15)),
                        ],
                      ),

                      SizedBox(height: 2,),
                       Text(
                        "Req Date: 27 Sept, 2021",
                        style: containerTextStyle2(),
                      ),
                      SizedBox(height: 2,),
                       Text(
                        "Req Date: 27 Sept, 2021",
                        style: containerTextStyle2(),
                      ),
                      SizedBox(height: 2,),
                       Text(
                        "Indent No.: 203",
                        style: containerTextStyle2(),
                      ),
                    ],
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


class InformationBoxContainer2 extends StatefulWidget{
  @override
  _InformationBoxContainer2State createState() => _InformationBoxContainer2State();
}

class _InformationBoxContainer2State extends State<InformationBoxContainer2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: Container(
        alignment: Alignment.center,
        height: 108,
        width: SizeConfig.getWidth(context),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16,top: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Ball Valve UPVC\n3/4’’",
                    style: containerTextStyle1(),
                  ),
                  const SizedBox(height: 13,),
                  Text(
                    "GHSN/SAC: 7307",
                    style: containerTextStyle4(),
                  ),
                  const SizedBox(height: 2,),
            Text(
            "Order no.: AA 16/GORD",
              style: containerTextStyle3(),
            ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30,top: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Order Qty.:\nReceive Qty.:\nRate:\nAmount:",
                          style: containerTextStyle2(),
                        ),
                        Text(
                          "Remarks:",
                          style: containerTextStyle4(),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26,top: 15),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "50 Pc\n50 Pc\n150\n7500",
                              style: containerTextStyle2(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26,top: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(icon15),
                            const SizedBox(height: 15.5,),
                            Text(
                              "Edit",
                              style: containerTextStyle5(),
                            ),
                            const SizedBox(height: 7,),
                            Text(
                              "Inc.Tax",
                              style: containerTextStyle3(),
                            ),
                          ],
                        ),
                      ],
                    ),
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