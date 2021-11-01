import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class PhaseToPhaseTransferBody extends StatelessWidget{
  final Widget child;

  const PhaseToPhaseTransferBody({
    Key key,
    this.child,
  }) : super(key: key);

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

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Date"),

          const DateTextFormField(),

          sizedbox1,

          FormsHeadText("Issue To Which Staff"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("From Which Phase"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Location [From]"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("To Phase"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Location [To]"),

          const DropdownForm(),

          sizedbox1,

          const FormsContainer(),

          sizedbox1,

          FormsHeadText("Total Amount:"),

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