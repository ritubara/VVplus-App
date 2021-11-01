import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/alert_dialog_box.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class BranchtoBranchSendBody extends StatelessWidget{
  final Widget child;

  const BranchtoBranchSendBody({
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

          FormsHeadText("Voucher No. Date"),

          const DateTextFormField(),

          sizedbox1,

          FormsHeadText("From Branch"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("From Phase"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("From Godown"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("To Branch"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("To Phase"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("To Godown"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Vehicle No."),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Indent Selection"),

          const DropdownForm(),

          sizedbox1,

          Padding(
              padding: padding4,

              child: RoundedButtonHome2("Submit",
                      (){showAlertDialog(context);},
                  roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}