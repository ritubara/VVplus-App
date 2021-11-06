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
            child: Container(
              height: 1000,
              child: Stack(
                children: [
                  ClearButton(),
                  TabBarView(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: RoundedButtonHome("Submit", () {})),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
                        FormsHeadText("Cheque Up To"),
                        const DateTextFormField(),
                        Padding(padding: paddingForms),
                        FormsHeadText("Choose Cheque"),
                        const DropdownForm(),
                        Padding(padding: paddingForms),
                        FormsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Name of Customer:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Cheque Date:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Amount:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Size:"),
                        Padding(padding: paddingForms),
                        FormsHeadText("Desposit Date"),
                        const DateTextFormField(),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: RoundedButtonHome("Submit", () {})),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.symmetric(vertical: 70)),
                        FormsHeadText("Deposit Up To"),
                        const DateTextFormField(),
                        Padding(padding: paddingForms),
                        FormsHeadText("Choose Cheque"),
                        const DropdownForm(),
                        Padding(padding: paddingForms),
                        FormsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Name of Customer:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Cheque Date:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Bank:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Amount:"),
                        Padding(padding: paddingForms),
                        FormsDetailText("Size:"),
                        Padding(padding: paddingForms),
                        FormsHeadText("Cleared Date"),
                        const DateTextFormField(),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: RoundedButtonHome("Submit", () {})),
                      ],
                    ),
                  ],
                  ),

                     Padding(
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
