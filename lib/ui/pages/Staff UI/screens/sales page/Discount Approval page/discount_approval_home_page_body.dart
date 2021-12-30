// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/department_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/indentor_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/voucher_type_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Sales_page_bloc/discount_approval_bloc.dart';
import 'package:vvplus_app/infrastructure/Models/department_name_model.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'package:vvplus_app/infrastructure/Models/voucher_type_model.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
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
  DepartmentNameDropdownBloc departmentNameDropdownBloc;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc1;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc2;
  IndentorNameDropdownBloc indentorNameDropdownBloc;

  DepartmentName selectDepartmentName;
  VoucherType selectVoucherType1;
  VoucherType selectVoucherType2;
  IndentorName selectIndentorName;

  void onDataChange1(DepartmentName state) {
    setState(() {
      selectDepartmentName = state;
    });
  }
  void onDataChange2(VoucherType state) {
    setState(() {
      selectVoucherType1 = state;
    });
  }
  void onDataChange3(VoucherType state) {
    setState(() {
      selectVoucherType2 = state;
    });
  }
  void onDataChange4(IndentorName state) {
    setState(() {
      selectIndentorName = state;
    });
  }
  @override
  void initState() {
    dateinput.text = "";
    departmentNameDropdownBloc = DepartmentNameDropdownBloc();
    voucherTypeDropdownBloc1 = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc2 = VoucherTypeDropdownBloc();
    indentorNameDropdownBloc = IndentorNameDropdownBloc();
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
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<VoucherType>>(
                  future: voucherTypeDropdownBloc1.voucherTypeDropdownData,
                  builder: (context, snapshot) {
                    return StreamBuilder<VoucherType>(
                        stream: voucherTypeDropdownBloc1.selectedState,
                        builder: (context, item) {
                          return SearchChoices<VoucherType>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectVoucherType1,
                            displayClearIcon: false,
                            onChanged: onDataChange2,
                            items: snapshot?.data
                                ?.map<DropdownMenuItem<VoucherType>>((e) {
                              return DropdownMenuItem<VoucherType>(
                                value: e,
                                child: Text(e.strName),
                              );
                            })?.toList() ??[],
                          );
                        }
                    );
                  }
              ),
            ),
          ),
          sizedbox1,
          formsHeadText("Requested By"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<DepartmentName>>(
                  future: departmentNameDropdownBloc.departmentNameData,
                  builder: (context, snapshot) {
                    return StreamBuilder<DepartmentName>(
                        stream: departmentNameDropdownBloc.selectedState,
                        builder: (context, item) {
                          return SearchChoices<DepartmentName>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectDepartmentName,
                            displayClearIcon: false,
                            onChanged: onDataChange1,
                            items: snapshot?.data
                                ?.map<DropdownMenuItem<DepartmentName>>((e) {
                              return DropdownMenuItem<DepartmentName>(
                                value: e,
                                child: Text(e.strName),
                              );
                            })?.toList() ??[],
                          );
                        }
                    );
                  }
              ),
            ),
          ),
          sizedbox1,
          formsHeadText("Reason for Discount"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<VoucherType>>(
                  future: voucherTypeDropdownBloc2.voucherTypeDropdownData,
                  builder: (context, snapshot) {
                    return StreamBuilder<VoucherType>(
                        stream: voucherTypeDropdownBloc2.selectedState,
                        builder: (context, item) {
                          return SearchChoices<VoucherType>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectVoucherType2,
                            displayClearIcon: false,
                            onChanged: onDataChange3,
                            items: snapshot?.data
                                ?.map<DropdownMenuItem<VoucherType>>((e) {
                              return DropdownMenuItem<VoucherType>(
                                value: e,
                                child: Text(e.strName),
                              );
                            })?.toList() ??[],
                          );
                        }
                    );
                  }
              ),
            ),
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
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<IndentorName>>(
                  future: indentorNameDropdownBloc.indentorNameDropdownData,
                  builder: (context, snapshot) {
                    return StreamBuilder<IndentorName>(
                        stream: indentorNameDropdownBloc.selectedState,
                        builder: (context, item) {
                          return SearchChoices<IndentorName>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectIndentorName,
                            displayClearIcon: false,
                            onChanged: onDataChange4,
                            items: snapshot?.data
                                ?.map<DropdownMenuItem<IndentorName>>((e) {
                              return DropdownMenuItem<IndentorName>(
                                value: e,
                                child: Text(e.strName),
                              );
                            })?.toList() ??[],
                          );
                        }
                    );
                  }
              ),
            ),
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
