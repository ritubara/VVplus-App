import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/homepage_logo.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
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
    Size size = SizeConfig.getSize(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15,),

          FormsHeadText("Indant Date"),

          DateTextFormField(),

          SizedBox(height: 15,),

          FormsHeadText("Indant Selection"),

          DropdownForm(),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: RoundedButtonHome2("Approve",(){},roundedButtonHomeColor1)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: RoundedButtonHome2("Deny",(){},roundedButtonHomeColor2)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: RoundedButtonHome2("Wait",(){},roundedButtonHomeColor3)),

        ],
      ),
    );
  }

}