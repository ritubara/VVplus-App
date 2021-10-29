import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

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
            padding: const EdgeInsets.symmetric(vertical: 5),
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

          const SizedBox(height: 15,),

          FormsHeadText("Booking Id"),

          const DropdownForm(),

          const InformationBoxContainer3(),

          const SizedBox(height: 15,),

          FormsHeadText("Stage (purpose? extra work? extra land?)"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Overhead"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Date of Estimate"),

          const DateTextFormField(),

          const SizedBox(height: 30,),

          FormsHeadText("Base Amount"),

          const NormalTextFormField(),

          const SizedBox(height: 15,),

          FormsHeadText("Tax:"),

          const SizedBox(height: 15,),

          FormsHeadText("Net Amount:"),

          const SizedBox(height: 15,),

          FormsHeadText("Remarks"),

          const NormalTextFormField(),

          const SizedBox(height: 15,),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),

              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }
}
