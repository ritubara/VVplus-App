import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class DiscountApprovalBody extends StatefulWidget {
  const DiscountApprovalBody({Key key}) : super(key: key);

  @override
  State<DiscountApprovalBody> createState() => myDiscountApprovalBody();
}

class myDiscountApprovalBody extends State<DiscountApprovalBody> {
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

          FormsHeadText("Branch and Phase"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Requested By"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Reason for Discount"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Remarks"),

          const NormalTextFormField(),

          sizedbox1,

          FormsHeadText("Customer Name"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Customer Contact No."),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            color: PrimaryColor3,
            height: 51.0,
            child: TextFormField(
              keyboardType: TextInputType.phone,
              style:const TextStyle(
                color: TextColor4,
                decorationColor: decorationColor1,
              ),
              decoration: textFieldInputDecorationWithCountryCode(),
            ),
          ),

          sizedbox1,

          FormsHeadText("For Unit No.:"),

          sizedbox1,

          FormsHeadText("Percentage Discount"),

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
