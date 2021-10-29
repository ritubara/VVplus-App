import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

class DailyManpowerBody extends StatefulWidget {
  @override
  State<DailyManpowerBody> createState() => myDailyManpowerBody();
}

class myDailyManpowerBody extends State<DailyManpowerBody> {
  int valueChoose = 4;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
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

          FormsHeadText("Date"),

          DateTextFormField(),

          SizedBox(height: 15,),

          FormsHeadText("Party Name"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Phase (cost center)"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Resource Type"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Qty."),

          NormalTextFormField(),

          SizedBox(height: 15,),

          FormsHeadText("Remarks"),

          NormalTextFormField(),

          SizedBox(height: 15,),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),

              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }
}
