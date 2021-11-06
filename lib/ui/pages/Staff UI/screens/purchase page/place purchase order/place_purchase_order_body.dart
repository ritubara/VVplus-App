import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
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
          sizedbox1,

          FormsHeadText("Voucher No:"),

          sizedbox1,

          FormsHeadText("Voucher Type"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Date"),

          const DateTextFormField(),

          sizedbox1,

          FormsHeadText("Supplier"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("Indent Selection"),

          const DropdownForm(),

          sizedbox1,

          FormsHeadText("PO Valid Date"),

          const DateTextFormField(),

          const InformationBoxContainer2(),

          sizedbox1,

          FormsHeadText("Remarks:"),

          sizedbox1,

          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}