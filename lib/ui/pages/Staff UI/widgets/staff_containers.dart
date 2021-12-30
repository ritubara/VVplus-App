import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';



BoxDecoration decorationForms() {
  return BoxDecoration(
    color: primaryColor8,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: primaryColor9, width: 0),

  );
}

BoxDecoration containerDecorationForms() {
  return BoxDecoration(
    color: primaryColor3,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: primaryColor9, width: 1),

  );
}

class InformationBoxContainer1 extends StatefulWidget {
  const InformationBoxContainer1({Key key}) : super(key: key);

  @override
  _InformationBoxContainer1State createState() =>
      _InformationBoxContainer1State();
}

class _InformationBoxContainer1State extends State<InformationBoxContainer1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
        alignment: Alignment.center,
        height: 92,
        width: SizeConfig.getWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: primaryColor3,
          boxShadow: const [
            BoxShadow(
              color: primaryColor5,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
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
                        padding: const EdgeInsets.only(left: 40),
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
              padding: const EdgeInsets.only(left: 50, top: 13),
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
                              padding: const EdgeInsets.only(left: 100),
                              child: Image.asset(icon15)),
                        ],
                      ),

                      const SizedBox(height: 2,),
                      Text(
                        "Req Date: 27 Sept, 2021",
                        style: containerTextStyle2(),
                      ),
                      const SizedBox(height: 2,),
                      Text(
                        "Req Date: 27 Sept, 2021",
                        style: containerTextStyle2(),
                      ),
                      const SizedBox(height: 2,),
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


class InformationBoxContainer2 extends StatefulWidget {
  const InformationBoxContainer2({Key key}) : super(key: key);

  @override
  _InformationBoxContainer2State createState() =>
      _InformationBoxContainer2State();
}

class _InformationBoxContainer2State extends State<InformationBoxContainer2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
        alignment: Alignment.center,
        height: 108,
        width: SizeConfig.getWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: primaryColor3,
          boxShadow: const [
            BoxShadow(
              color: primaryColor5,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
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
              padding: const EdgeInsets.only(left: 30, top: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
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
                    padding: const EdgeInsets.only(left: 26, top: 15),
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
                    padding: const EdgeInsets.only(left: 26, top: 10),
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

class InformationBoxContainer3 extends StatefulWidget {
  const InformationBoxContainer3({Key key}) : super(key: key);

  @override
  _InformationBoxContainer3State createState() =>
      _InformationBoxContainer3State();
}

class _InformationBoxContainer3State extends State<InformationBoxContainer3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 11),
      child: Container(
        alignment: Alignment.center,
        height: 134,
        width: SizeConfig.getWidth(context) * .95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: primaryColor3,
          boxShadow: const [
            BoxShadow(
              color: primaryColor5,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Name: Chandra Shekhar",
                    style: containerTextStyle6(),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Booking ID: 229/\nUBOOK/PN/12",
                            style: containerTextStyle3(),
                          ),
                          const SizedBox(height: 8,),
                          Text(
                            "Unit: GA-105(C),\nPH-06",
                            style: containerTextStyle3(),
                          ),
                        ],
                      ),
                      const SizedBox(width: 41,),
                      Text(
                        "Booking Date:   22/Sept/2012\nUnit Category:  Appt 2Bhk(661sqft)\nFloor:                  First FloorProject\nName:   AIIMS-01(06)/C/GA/66Tax\nStructure:   GST 01 PER",
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


class InformationBoxContainer4 extends StatefulWidget {
  const InformationBoxContainer4({Key key}) : super(key: key);

  @override
  _InformationBoxContainer4State createState() =>
      _InformationBoxContainer4State();
}

class _InformationBoxContainer4State extends State<InformationBoxContainer4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 15),
      child: Container(
        alignment: Alignment.center,
        height: 134,
        width: SizeConfig.getWidth(context) * .93,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: primaryColor3,
          boxShadow: const [
            BoxShadow(
              color: primaryColor5,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Name: Tripurari Jha ",
                    style: containerTextStyle6(),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Booking ID: 101/\nUBOOK/PN/13",
                            style: containerTextStyle3(),
                          ),
                          const SizedBox(height: 8,),
                          Text(
                            "Unit: AD-202(D),\nPH-03",
                            style: containerTextStyle3(),
                          ),
                        ],
                      ),
                      const SizedBox(width: 35,),
                      Text(
                        "Booking Date:    06/Nov/2013\nUnit Category:   Appt 2Bhk(750sqft)\nFloor:                   Second Floor\nPhase:                 Patna PH-03/RR\nUnit Area:           1150\nNet Unit Cost:    16,37,000",
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


class FormsContainer extends StatefulWidget {
  const FormsContainer({Key key}) : super(key: key);

  @override
  State<FormsContainer> createState() => MyFormsContainer();
}

class MyFormsContainer extends State<FormsContainer> {

  TextEditingController reqQty = TextEditingController();
  TextEditingController rate = TextEditingController();

  //final GlobalKey<FormState> _formKey = GlobalKey();
  int valueChoose = 4;

  @override
  Widget build(BuildContext context) {
    final bloc = MaterialProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 378,
        width: SizeConfig.getWidth(context),
        decoration: BoxDecoration(
          color: storeContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            formsHeadText("Item "),
            const ContainerSearchDropDown(),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            formsHeadText("Request Qty. "),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),

                  child: Container(
                    height: 50,
                    padding: padding1,
                    decoration: decoration1(),

                    child: SizedBox(
                      width: 130,

                      child: StreamBuilder<String>(
                          stream: bloc.requestQty,
                          builder: (context, snapshot) {
                            return TextFormField(
                              controller: reqQty,
                              decoration: InputDecoration(
                                errorText: snapshot.error,
                              ),
                              onChanged: bloc.changerequestQty,
                              keyboardType: TextInputType.number,
                              style: simpleTextStyle7(),
                            );
                          }
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: const Text(" "),
                        dropdownColor: primaryColor3,
                        icon: const Icon(Icons.keyboard_arrow_down_sharp),
                        iconSize: 20,
                        isExpanded: true,
                        iconEnabledColor: primaryColor4,
                        style: const TextStyle(
                            color: primaryColor2, fontSize: 12),
                        value: valueChoose,
                        items: const <DropdownMenuItem<int>>[
                          DropdownMenuItem(
                            child: Text('\tTon'),
                            value: 0,
                          ),
                          DropdownMenuItem(
                            child: Text('\tKG'),
                            value: 4,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            valueChoose = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Row(
              children: [
                formsHeadText("Rate"),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                formsHeadText("Amount:"),
              ],
            ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),

                  child: Container(
                    height: 50,
                    padding: padding1,
                    decoration: decoration1(),

                    child: SizedBox(
                      width: 100,

                      child: StreamBuilder<double>(
                          stream: bloc.ratefield,
                          builder: (context, snapshot) {
                            return TextFormField(
                              controller: rate,
                              decoration: InputDecoration(
                                errorText: snapshot.error,
                              ),
                              onChanged: bloc.changeratefield,
                              keyboardType: TextInputType.number,
                              style: simpleTextStyle7(),
                            );
                          }
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),

            Row(
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {
                     reqQty.clear();
                    rate.clear();
                  },
                  elevation: 0.0,
                  color: storeContainerColor,
                  child: raisedButtonText("Clear This Item"),

                ),


                StreamBuilder<bool>(
                  stream: bloc.submitCheck,
                  builder: (context, snapshot) {
                    return RoundedButtonInput(
                      text: "Add Item to List",
                      press: !snapshot.hasData ? null: (){

                      } ,
                      fontsize1: 12,
                      size1: 0.5,
                      horizontal1: 30,
                      vertical1: 10,
                      color1: Colors.orange,
                      textColor1: textColor1,
                    );
                  }
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}


BoxDecoration decorationFormsCont() {
  return BoxDecoration(
    color: primaryColor3,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: primaryColor9, width: 1),

  );
}
