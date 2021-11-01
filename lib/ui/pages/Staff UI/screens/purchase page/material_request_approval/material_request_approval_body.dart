import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class MaterialRequestApprovalBody extends StatelessWidget{
  final Widget child;

  const MaterialRequestApprovalBody({
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

          FormsHeadText("Indant Date"),

          const DateTextFormField(),

          sizedbox1,

          FormsHeadText("Indant Selection"),

          const DropdownForm(),

          //SizedBox(height: 10,),

          const InformationBoxContainer1(),

          //SizedBox(height: 10,),

          const InformationBoxContainer1(),

          sizedbox1,

          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Approve",(){},roundedButtonHomeColor1)),
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Deny",(){},roundedButtonHomeColor2)),
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Wait",(){},roundedButtonHomeColor3)),

        ],
      ),
    );
  }

}