import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class DailyManpowerBody extends StatefulWidget {
  const DailyManpowerBody({Key key}) : super(key: key);

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
            padding: paddingForms2,
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

          const DateTextFormField(),

          sizedbox1,

          FormsHeadText("Party Name"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Phase (cost center)"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Resource Type"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Qty."),

          const NormalTextFormField(),

          sizedbox1,

          FormsHeadText("Remarks"),

          const NormalTextFormField(),

          sizedbox1,

          Padding(
              padding: padding4,

              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }
}
