import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
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
    Size size = SizeConfig.getSize(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15,),

          SizedBox(height: 15,),

          FormsHeadText("Voucher Type"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Date"),

          DateTextFormField(),

          SizedBox(height: 30,),

          FormsHeadText("Voucher No:"),

          SizedBox(height: 15,),

          FormsHeadText("Party Bill No"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Party Bill Date"),

          DateTextFormField(),

          SizedBox(height: 15,),

          FormsHeadText("Supplier"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Purchase Order Select"),

          DropdownForm(),

          SizedBox(height: 15,),

          FormsHeadText("Vehicle No."),

          DropdownForm(),

          SizedBox(height: 15,),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),

              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),

        ],
      ),
    );
  }

}