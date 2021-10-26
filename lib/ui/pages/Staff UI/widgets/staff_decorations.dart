import 'package:flutter/material.dart';
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


BoxDecoration DecorationForms() {
  return BoxDecoration(
    color: PrimaryColor8,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: PrimaryColor9,width: 1),

  );
}

BoxDecoration ContainerDecorationForms() {
  return BoxDecoration(
    color: PrimaryColor3,
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


// forms container
class FormsContainer extends StatefulWidget{
  @override
  State<FormsContainer> createState() => MyFormsContainer();
  }
class MyFormsContainer extends State<FormsContainer>{
  int valueChoose = 4;
  @override
  Widget build(BuildContext context) {
  return  Padding(
    padding: EdgeInsets.all(10),
    child: Container(
      height: 378,
      width: SizeConfig.getWidth(context),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          FormsHeadText("Item "),
          DropdownFormCont(),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          FormsHeadText("Request Qty. "),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 50,
                  padding: padding1,
                  decoration: decoration1(),
                  child: SizedBox(
                    width: 130,
                    child: TextFormField(
                      decoration: InputDecoration(

                      ),
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle7(),
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
                      hint: Text(" "),
                      dropdownColor: PrimaryColor3,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      iconSize: 20,
                      isExpanded: true,
                      iconEnabledColor: PrimaryColor4,
                      style: const TextStyle(
                          color: PrimaryColor2, fontSize: 12),
                      value: valueChoose,
                      items: <DropdownMenuItem<int>>[
                        new DropdownMenuItem(
                          child: new Text('\tTon'),
                          value: 0,
                        ),
                        new DropdownMenuItem(
                          child: new Text('\tKG'),
                          value: 4,
                        ),
                      ],
                      onChanged: (Value) {
                        setState(() {
                          valueChoose = Value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Row(
            children: [
              FormsHeadText("Rate"),
              Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
              FormsHeadText("Amount:"),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 50,
                  padding: padding1,
                  decoration: decoration1(),
                  child: SizedBox(
                    width: 100,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: simpleTextStyle7(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),

          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              RaisedButton(
                onPressed: () {},
                elevation: 0.0,
                color: Color(0xFFDFEBE7),
                child: RaisedButtonText("Clear This Item"),
              ),

              ButtonStaffContainer("Add Item to List",(){})
            ],
          )
        ],
      ),
    ),
  );

  }

}


BoxDecoration DecorationFormsCont() {
  return BoxDecoration(
    color: PrimaryColor3,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: PrimaryColor9,width: 1),

  );
}
