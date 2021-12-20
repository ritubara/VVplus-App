import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/cheque%20entry/custom_tab_bar.dart';
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

          DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: SizedBox(
              height: 1000,
              child: Stack(
                children: [
                  clearButton(),
                  TabBarView(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
                        formsHeadText("Voucher Type"),
                        const NormalTextFormField(),
                        Padding(padding: paddingForms),
                        formsHeadText("Cheque Receiving Date"),
                        const DateTextFormField(),
                        Padding(padding: paddingForms),
                        formsHeadText("Payment Type"),
                        const DropdownForm(),
                        Padding(padding: paddingForms),
                        formsHeadText("Credit Account (customer name)"),
                        const DateTextFormField(),
                        Padding(padding: paddingForms),
                        formsHeadText("Debit Account (company):"),
                        Padding(padding: paddingForms),
                        formsHeadText("Drawn Bank"),
                        const DropdownForm(),
                        Padding(padding: paddingForms),
                        formsHeadText("Customer Info:"),
                        Padding(padding: paddingForms),
                        formsHeadText("Cheque No."),
                        const NormalTextFormField(),
                        Padding(padding: paddingForms),
                        formsHeadText("Amount"),
                        const NormalTextFormField(),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: roundedButtonHome("Submit", () {})),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
                        formsHeadText("Cheque Up To"),
                        const DateTextFormField(),
                        Padding(padding: paddingForms),
                        formsHeadText("Choose Cheque"),
                        const DropdownForm(),
                        Padding(padding: paddingForms),
                        formsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Name of Customer:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Cheque Date:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Amount:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Size:"),
                        Padding(padding: paddingForms),
                        formsHeadText("Desposit Date"),
                        const DateTextFormField(),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: roundedButtonHome("Submit", () {})),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
                        formsHeadText("Deposit Up To"),
                        const DateTextFormField(),
                        Padding(padding: paddingForms),
                        formsHeadText("Choose Cheque"),
                        const DropdownForm(),
                        Padding(padding: paddingForms),
                        formsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Name of Customer:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Cheque Date:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Amount:"),
                        Padding(padding: paddingForms),
                        formsDetailText("Size:"),
                        Padding(padding: paddingForms),
                        formsHeadText("Cleared Date"),
                        const DateTextFormField(),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: roundedButtonHome("Submit", () {})),
                      ],
                    ),
                  ],
                  ),

                     const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 60),
                      child: CustomTabBar(),
                    ),


              ],
            ),
          ),
      ),
      ],
      ),
    );
  }
}
