import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

class PhaseToPhaseTransferBody extends StatefulWidget{
  const PhaseToPhaseTransferBody({Key key}) : super(key: key);
  @override
  State<PhaseToPhaseTransferBody> createState() => myPhaseToPhaseTransferBody();
}
class myPhaseToPhaseTransferBody extends State<PhaseToPhaseTransferBody> {

  TextEditingController dateinput = TextEditingController();
  TextEditingController remarks = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }
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
                  onPressed: () {
                    dateinput.clear();
                    remarks.clear();
                  },
                  elevation: 0.0,
                  color: Colors.white,
                  child: RaisedButtonText("Clear all"),
                ),
              ],
            ),
          ),
          FormsHeadText("Voucher Type"),
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
          sizedbox1,
          FormsHeadText("Date"),
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
          FormsHeadText("Issue To Which Staff"),
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
          sizedbox1,
          FormsHeadText("From Which Phase"),
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
          sizedbox1,
          FormsHeadText("Location [From]"),
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
          sizedbox1,
          FormsHeadText("To Phase"),
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
          sizedbox1,
          FormsHeadText("Location [To]"),
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
          sizedbox1,
          const FormsContainer(),
          sizedbox1,
          FormsHeadText("Total Amount:"),
          sizedbox1,
          FormsHeadText("Remarks"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField,
                builder: (context, snapshot) => TextFormField(
                  controller: remarks,
                  onChanged: bloc.intextField,
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