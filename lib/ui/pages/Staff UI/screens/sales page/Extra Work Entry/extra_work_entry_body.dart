import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ExtraWorkEntryBody extends StatefulWidget {
  const ExtraWorkEntryBody({Key key}) : super(key: key);

  @override
  State<ExtraWorkEntryBody> createState() => myExtraWorkEntryBody();
}

class myExtraWorkEntryBody extends State<ExtraWorkEntryBody> {
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

          FormsHeadText("Voucher Type"),

          const NormalTextFormField(),

          sizedbox1,

          FormsHeadText("Booking Id"),

          const DropdownForm(),

          const InformationBoxContainer3(),

          sizedbox1,

          FormsHeadText("Stage (purpose? extra work? extra land?)"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Overhead"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Date of Estimate"),

          const DateTextFormField(),

          sizedbox1,

          FormsHeadText("Base Amount"),

          const NormalTextFormField(),

          sizedbox1,

          FormsHeadText("Tax:"),

          sizedbox1,

          FormsHeadText("Net Amount:"),

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
