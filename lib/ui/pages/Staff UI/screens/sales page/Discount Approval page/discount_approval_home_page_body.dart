import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Sales_page_bloc/discount_approval_bloc.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class DiscountApprovalBody extends StatefulWidget {
  const DiscountApprovalBody({Key key}) : super(key: key);
  @override
  State<DiscountApprovalBody> createState() => MyDiscountApprovalBody();
}
class MyDiscountApprovalBody extends State<DiscountApprovalBody> {
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }
  int valueChoose = 4;

  @override
  Widget build(BuildContext context) {
    final bloc = DiscountApprovalProvider.of(context);
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
                  child: raisedButtonText("Clear all"),
                ),
              ],
            ),
          ),
          formsHeadText("Date"),
          Container(
            padding: dateFieldPadding,
            height: dateFieldHeight,
            child: Center(
              child: TextFormField(
                controller: dateinput,
                decoration: dateFieldDecoration(),
                readOnly: true,
                onTap: () async {
                  DateTime pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101)
                  );
                  if (pickedDate != null) {
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    setState(() {
                      dateinput.text = formattedDate;
                    });
                  } else {
                  }
                },
              ),
            ),
          ),
          sizedbox1,
          formsHeadText("Branch and Phase"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          formsHeadText("Requested By"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          formsHeadText("Reason for Discount"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          formsHeadText("Remarks"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField1,
                builder: (context, snapshot) => TextFormField(
                  onChanged: bloc.intextField1,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: primaryColor8,
                      enabledBorder: textFieldBorder(),
                      focusedBorder: textFieldBorder(),
                      errorText: snapshot.error
                  ),
                  keyboardType: TextInputType.text,
                  style: simpleTextStyle7(),
                ),
              ),
            ),
          ),
          sizedbox1,
          formsHeadText("Customer Name"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          formsHeadText("Customer Contact No."),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            color: primaryColor3,
            height: 51.0,
            child: TextFormField(
              keyboardType: TextInputType.phone,
              style:const TextStyle(
                color: textColor4,
                decorationColor: decorationColor1,
              ),
              decoration: InputDecoration(
                  contentPadding: phoneTextFieldPadding,
                  //prefixIcon: phoneTextFieldPicker(),
                  focusColor: textColor4,
                  enabledBorder: outlineBorder(),
                  focusedBorder: outlineBorder(),//floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefix: Padding(padding: phoneTextFieldPadding1),
                  hintText: "Enter Mobile Number",
                  hintStyle: const TextStyle(color: primaryColor2,),
              ),
            ),
          ),
          sizedbox1,
          formsHeadText("For Unit No.:"),
          sizedbox1,
          formsHeadText("Percentage Discount"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField2,
                builder: (context, snapshot) => TextFormField(
                  onChanged: bloc.intextField2,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: primaryColor8,
                      enabledBorder: textFieldBorder(),
                      focusedBorder: textFieldBorder(),
                      errorText: snapshot.error
                  ),
                  keyboardType: TextInputType.text,
                  style: simpleTextStyle7(),
                ),
              ),
            ),
          ),
          sizedbox1,
          Padding(
              padding: padding4,
              child: roundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),
        ],
      ),
    );
  }
}
