import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class MaterialEntryBody extends StatefulWidget {
  const MaterialEntryBody({Key key}) : super(key: key);

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
            padding: paddingForms,
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
          const DropdownForm(),

          const Padding(padding: EdgeInsets.all(10)),

          FormsHeadText("Indent Date"),
          const DateTextFormField(),

          const FormsContainer(),

          FormsHeadText("Choose Phase (Cost Center)"),
          const DropdownForm(),

          Padding(padding: paddingForms),

          FormsHeadText("Req. Date"),
          const DateTextFormField(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              child: RoundedButtonHome("Submit", (){})
          ),
        ],
      ),
    );
  }
}
