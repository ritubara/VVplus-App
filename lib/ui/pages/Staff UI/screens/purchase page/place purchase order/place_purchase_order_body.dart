import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class PlacePurchaseOrderBody extends StatelessWidget{
  final Widget child;

  const PlacePurchaseOrderBody({
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
          const SizedBox(height: 15,),

          FormsHeadText("Voucher No:"),

          const SizedBox(height: 15,),

          FormsHeadText("Voucher Type"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Date"),

          const DateTextFormField(),

          const SizedBox(height: 15,),

          FormsHeadText("Supplier"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("Indent Selection"),

          const DropdownForm(),

          const SizedBox(height: 15,),

          FormsHeadText("PO Valid Date"),

          const DateTextFormField(),

          const InformationBoxContainer2(),

          const SizedBox(height: 15,),

          FormsHeadText("Remarks:"),

          const SizedBox(height: 15,),

          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}