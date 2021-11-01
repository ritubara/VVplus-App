import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class BranchtoBranchReceiveBody extends StatelessWidget{
  final Widget child;

  const BranchtoBranchReceiveBody({
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

          FormsHeadText("Receiving goods from branch "),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Receiving in Godown"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Transfer Entry Selection"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Gate Entry No."),

          const NormalTextFormField(),

          sizedbox1,

          FormsHeadText("Vehicle No."),

          const NormalTextFormField(),

          sizedbox1,

          FormsHeadText("Remarks"),

          const NormalTextFormField(),

          sizedbox1,

          Padding(
              padding: padding4,

              child: RoundedButtonHome2("Confirm Receiving",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}