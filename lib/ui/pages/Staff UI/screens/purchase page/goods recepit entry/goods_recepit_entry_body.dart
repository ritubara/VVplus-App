import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class GoodsRecepitEntryBody extends StatelessWidget{
  final Widget child;

  const GoodsRecepitEntryBody({
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

          FormsHeadText("Voucher No:"),

          sizedbox1,

          FormsHeadText("Party Bill No"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Party Bill Date"),

          const DateTextFormField(),

          sizedbox1,

          FormsHeadText("Supplier"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Purchase Order Select"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Vehicle No."),

          const DropdownForm(),

          sizedbox1,

          Padding(
              padding: padding4,

              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}