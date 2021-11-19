import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/alert_dialog_box.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class BranchtoBranchSendBody extends StatefulWidget{
  const BranchtoBranchSendBody({Key key}) : super(key: key);
  @override
  State<BranchtoBranchSendBody> createState() => myBranchtoBranchSendBody();
}
class myBranchtoBranchSendBody extends State<BranchtoBranchSendBody> {

  TextEditingController dateinput = TextEditingController();

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
          FormsHeadText("Voucher No. Date"),
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
          FormsHeadText("From Branch"),
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
          FormsHeadText("From Phase"),
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
          FormsHeadText("From Godown"),

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

          FormsHeadText("To Branch"),

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
          FormsHeadText("To Godown"),
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
          FormsHeadText("Vehicle No."),
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
          FormsHeadText("Indent Selection"),
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
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Submit",
                      (){showAlertDialog(context);},
                  roundedButtonHomeColor1)),
        ],
      ),
    );
  }

}