import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class CheckEntryBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      ClearButton(),

      FormsHeadText("Voucher Type"),
      NormalTextFormField(),

      Padding(padding:paddingForms),

      FormsHeadText("Cheque Receiving Date"),
      DateTextFormField(),

      Padding(padding: paddingForms),

      FormsHeadText("Payment Type"),
      DropdownForm(),

      Padding(padding: paddingForms),

      FormsHeadText("Credit Account (customer name)"),
      DateTextFormField(),

      Padding(padding:paddingForms),

      FormsHeadText("Debit Account (company):"),

      Padding(padding: paddingForms),

      FormsHeadText("Drawn Bank"),
      DropdownForm(),

      Padding(padding: paddingForms),
      FormsHeadText("Customer Info:"),

      Padding(padding: paddingForms),
      FormsHeadText("Cheque No."),
      NormalTextFormField(),

      Padding(padding: paddingForms),
      FormsHeadText("Amount"),
      NormalTextFormField(),

      Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          child: RoundedButtonHome("Submit", (){})
      ),






    ],
  ),
);
  }

}