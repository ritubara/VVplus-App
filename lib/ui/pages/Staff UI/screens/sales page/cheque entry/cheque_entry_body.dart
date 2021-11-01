import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ChequeEntryBody extends StatelessWidget {
  const ChequeEntryBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClearButton(),
          FormsHeadText("Voucher Type"),
          const NormalTextFormField(),
          Padding(padding: paddingForms),
          FormsHeadText("Cheque Receiving Date"),
          const DateTextFormField(),
          Padding(padding: paddingForms),
          FormsHeadText("Payment Type"),
          const DropdownForm(),
          Padding(padding: paddingForms),
          FormsHeadText("Credit Account (customer name)"),
          const DateTextFormField(),
          Padding(padding: paddingForms),
          FormsHeadText("Debit Account (company):"),
          Padding(padding: paddingForms),
          FormsHeadText("Drawn Bank"),
          const DropdownForm(),
          Padding(padding: paddingForms),
          FormsHeadText("Customer Info:"),
          Padding(padding: paddingForms),
          FormsHeadText("Cheque No."),
          const NormalTextFormField(),
          Padding(padding: paddingForms),
          FormsHeadText("Amount"),
          const NormalTextFormField(),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: RoundedButtonHome("Submit", () {})),
        ],
      ),
    );
  }
}
