import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

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

          FormsHeadText("Date"),

          const DateTextFormField(),

          const SizedBox(height: 15,),

          FormsHeadText("Branch and Phase"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Requested By"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Reason for Discount"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Remarks"),

          const NormalTextFormField(),

          const SizedBox(height: 15,),

          FormsHeadText("Customer Name"),

          const DropdownForm(),

          const SizedBox(height: 15,),

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

          const SizedBox(height: 15,),

          FormsHeadText("For Unit No.:"),

          const SizedBox(height: 15,),

          FormsHeadText("Percentage Discount"),

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
