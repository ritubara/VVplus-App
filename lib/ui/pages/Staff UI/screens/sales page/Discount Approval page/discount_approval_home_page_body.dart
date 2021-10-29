import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class DiscountApprovalBody extends StatefulWidget {
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

          FormsHeadText("Branch and Phase"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Requested By"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Reason for Discount"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Remarks"),

          NormalTextFormField(),

          SizedBox(height: 15,),

          FormsHeadText("Customer Name"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Customer Contact No."),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 35),
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

          SizedBox(height: 15,),

          FormsHeadText("Percentage Discount"),

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
