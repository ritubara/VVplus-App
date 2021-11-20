import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Sales_page_bloc/extra_work_entry_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
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
  State<ExtraWorkEntryBody> createState() => myExtraWorkEntryBody();
}
class myExtraWorkEntryBody extends State<ExtraWorkEntryBody> {
  TextEditingController dateinput = TextEditingController();
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
                  child: RaisedButtonText("Clear all"),
                ),
              ],
            ),
          ),
          FormsHeadText("Voucher Type"),
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
                      fillColor: PrimaryColor8,
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
          FormsHeadText("Booking Id"),
          Padding(
            padding: padding1,
            child: Container(
              decoration: DecorationForms(),
              child: DropdownButtonHideUnderline(
                child: StreamBuilder(
                    stream: bloc.outDropField1,
                    builder: (context, snapshot) {
                      return DropdownButton<String>(
                        hint: Row(
                          children: [
                            IconButton(
                              icon: dropDownFieldIcon1,
                              onPressed: () {  },
                            ),
                            Text(dropDownFieldText),
                          ],
                        ),
                        dropdownColor: PrimaryColor3,
                        icon: dropDownFieldIcon2,
                        iconSize: 20,
                        isExpanded: true,
                        iconEnabledColor: PrimaryColor4,
                        style: dropDownFieldStyle,
                        value: snapshot.data,
                        onChanged: bloc.inDropField1,
                        items: bloc.names.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                      );
                    }
                ),
              ),
            ),
          ),
          const InformationBoxContainer3(),
          sizedbox1,
          FormsHeadText("Stage (purpose? extra work? extra land?)"),
          Padding(
            padding: padding1,
            child: Container(
              decoration: DecorationForms(),
              child: DropdownButtonHideUnderline(
                child: StreamBuilder(
                    stream: bloc.outDropField2,
                    builder: (context, snapshot) {
                      return DropdownButton<String>(
                        hint: Row(
                          children: [
                            IconButton(
                              icon: dropDownFieldIcon1,
                              onPressed: () {  },
                            ),
                            Text(dropDownFieldText),
                          ],
                        ),
                        dropdownColor: PrimaryColor3,
                        icon: dropDownFieldIcon2,
                        iconSize: 20,
                        isExpanded: true,
                        iconEnabledColor: PrimaryColor4,
                        style: dropDownFieldStyle,
                        value: snapshot.data,
                        onChanged: bloc.inDropField2,
                        items: bloc.names.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                      );
                    }
                ),
              ),
            ),
          ),
          sizedbox1,
          FormsHeadText("Overhead"),
          Padding(
            padding: padding1,
            child: Container(
              decoration: DecorationForms(),
              child: DropdownButtonHideUnderline(
                child: StreamBuilder(
                    stream: bloc.outDropField3,
                    builder: (context, snapshot) {
                      return DropdownButton<String>(
                        hint: Row(
                          children: [
                            IconButton(
                              icon: dropDownFieldIcon1,
                              onPressed: () {  },
                            ),
                            Text(dropDownFieldText),
                          ],
                        ),
                        dropdownColor: PrimaryColor3,
                        icon: dropDownFieldIcon2,
                        iconSize: 20,
                        isExpanded: true,
                        iconEnabledColor: PrimaryColor4,
                        style: dropDownFieldStyle,
                        value: snapshot.data,
                        onChanged: bloc.inDropField3,
                        items: bloc.names.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                      );
                    }
                ),
              ),
            ),
          ),
          sizedbox1,
          FormsHeadText("Date of Estimate"),
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
          FormsHeadText("Base Amount"),
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
                      fillColor: PrimaryColor8,
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
          FormsHeadText("Tax:"),
          sizedbox1,
          FormsHeadText("Net Amount:"),
          sizedbox1,
          FormsHeadText("Remarks"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField3,
                builder: (context, snapshot) => TextFormField(
                  onChanged: bloc.intextField3,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: PrimaryColor8,
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
              child: RoundedButtonHome2("Submit",(){},roundedButtonHomeColor1)),
        ],
      ),
    );
  }
}
