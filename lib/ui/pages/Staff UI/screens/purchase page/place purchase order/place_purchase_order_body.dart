import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/homepage_logo.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
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
    Size size = SizeConfig.getSize(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15,),

          FormsHeadText("Voucher No:"),

          SizedBox(height: 15,),

          FormsHeadText("Voucher Type"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Date"),

          DateTextFormField(),

          SizedBox(height: 15,),

          FormsHeadText("Supplier"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Indent Selection"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("PO Valid Date"),

          DateTextFormField(),

          InformationBoxContainer2(),

          SizedBox(height: 15,),

          FormsHeadText("Remarks:"),

          SizedBox(height: 15,),

          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}