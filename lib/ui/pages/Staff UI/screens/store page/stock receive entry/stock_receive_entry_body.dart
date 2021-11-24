import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class StockReceiveEntryBody extends StatefulWidget{
  const StockReceiveEntryBody({Key key}) : super(key: key);
  @override
  State<StockReceiveEntryBody> createState() => myStockReceiveEntryBody();
}
class myStockReceiveEntryBody extends State<StockReceiveEntryBody> {
  @override
  Widget build(BuildContext context) {
    final bloc = MaterialProvider.of(context);
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
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          FormsHeadText("Received By"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          FormsHeadText("Godown"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          FormsHeadText("Choose your phase (Cost Centre)"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          const FormsContainer(),
          sizedbox1,
          FormsHeadText("Total Amount:"),
          sizedbox1,
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),
        ],
      ),
    );
  }

}