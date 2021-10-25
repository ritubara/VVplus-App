import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/screens/NewComplaint%20page/drop_down_menu_items.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class MaterialEntryBody extends StatefulWidget {
  @override
  State<MaterialEntryBody> createState() => myMaterialEntryBody();
}

class myMaterialEntryBody extends State<MaterialEntryBody> {
  int valueChoose = 4;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton(
                  onPressed: () {},
                  elevation: 0.0,
                  color: Colors.white,
                  child: RaisedButtonText("Clear all"),
                ),
              ],
            ),
          ),
          FormsHeadText("Indent Type"),
          DropdownForm(),
          Padding(padding: EdgeInsets.all(10)),
          FormsHeadText("Indent Date"),
          DateTextFormField(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 378,
              width: 340,
              decoration: BoxDecoration(
                color: Color(0xFFDFEBE7),
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
          ),

          FormsHeadText("Choose Phase (Cost Center)"),
          DropdownForm(),

          Padding(padding: EdgeInsets.symmetric(vertical: 10)),

          FormsHeadText("Req. Date"),
          DateTextFormField(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              child: RoundedButtonHome("Submit", (){})
          ),
        ],
      ),
    );
  }
}
