import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Sales_page_bloc/extra_work_entry_bloc.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ExtraWorkEntryBody extends StatefulWidget {
  const ExtraWorkEntryBody({Key key}) : super(key: key);
  @override
  State<ExtraWorkEntryBody> createState() => MyExtraWorkEntryBody();
}
class MyExtraWorkEntryBody extends State<ExtraWorkEntryBody> {
  final TextEditingController dateinput = TextEditingController();
  final TextEditingController _voucherType = TextEditingController();
  final TextEditingController _remarks = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }
  int valueChoose = 4;

  @override
  Widget build(BuildContext context) {
    final bloc = SalesExtraWorkEntryProvider.of(context);
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
          formsHeadText("Voucher Type"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField1,
                builder: (context, snapshot) => TextFormField(
                  controller: _voucherType,
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
          formsHeadText("Booking Id"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          const InformationBoxContainer3(),
          sizedbox1,
          formsHeadText("Stage (purpose? extra work? extra land?)"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          formsHeadText("Overhead"),
          Padding(
            padding: paddingForms,
            child: const SearchDropDown(),
          ),
          sizedbox1,
          formsHeadText("Date of Estimate"),
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
          formsHeadText("Base Amount"),
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
          formsHeadText("Tax:"),
          sizedbox1,
          formsHeadText("Net Amount:"),
          sizedbox1,
          formsHeadText("Remarks"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField3,
                builder: (context, snapshot) => TextFormField(
                  controller: _remarks,
                  onChanged: bloc.intextField3,
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
