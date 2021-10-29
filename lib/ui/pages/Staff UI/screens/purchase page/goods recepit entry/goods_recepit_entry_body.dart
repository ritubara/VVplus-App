import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

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

          FormsHeadText("Voucher Type"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Date"),

          const DateTextFormField(),

          const SizedBox(height: 30,),

          FormsHeadText("Voucher No:"),

          const SizedBox(height: 15,),

          FormsHeadText("Party Bill No"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Party Bill Date"),

          const DateTextFormField(),

          const SizedBox(height: 15,),

          FormsHeadText("Supplier"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Purchase Order Select"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Vehicle No."),

          const DropdownForm(),

          const SizedBox(height: 15,),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),

              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}