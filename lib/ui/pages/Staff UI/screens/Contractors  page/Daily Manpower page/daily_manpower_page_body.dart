import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/department_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_cost_center_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/voucher_type_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Contractors_page_bloc/daily_manpower_page_bloc.dart';
import 'package:vvplus_app/domain/common/snackbar_widget.dart';
import 'package:vvplus_app/infrastructure/Models/department_name_model.dart';
import 'package:vvplus_app/infrastructure/Models/item_cost_center_model.dart';
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
import 'package:http/http.dart' as http;

class DailyManpowerBody extends StatefulWidget {
  const DailyManpowerBody({Key key}) : super(key: key);
  @override
  State<DailyManpowerBody> createState() => myDailyManpowerBody();
}
class myDailyManpowerBody extends State<DailyManpowerBody> {

  TextEditingController dateinput = TextEditingController();
  final TextEditingController _qty = TextEditingController();
  final TextEditingController _remarks = TextEditingController();

  DepartmentNameDropdownBloc departmentNameDropdownBloc;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc;

  ItemCostCenter selectItemCostCenter;
  VoucherType selectVoucherType;
  DepartmentName selectDepartmentName;

  void onDataChange1(VoucherType state) {
    setState(() {
      selectVoucherType = state;
    });
  }
  void onDataChange2(DepartmentName state) {
    setState(() {
      selectDepartmentName = state;
    });
  }
  void onDataChange3(ItemCostCenter state) {
    setState(() {
      selectItemCostCenter = state;
    });
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  void initState() {
    dateinput.text = "";
    departmentNameDropdownBloc = DepartmentNameDropdownBloc();
    itemCostCenterDropdownBloc = ItemCostCenterDropdownBloc();
    voucherTypeDropdownBloc = VoucherTypeDropdownBloc();
    super.initState();
  }
  void clearData(){
    dateinput.clear();
    _qty.clear();
    _remarks.clear();
  }
  sendData() {
    if (_qty.text != null) {
      http.post(Uri.parse(
          "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataDailyManPower.json"),
          body: json.encode({
            "IntendDate": dateinput.text,
            "PartyNameSubCode": selectDepartmentName.strSubCode,
            "CostCenterSubCode": selectItemCostCenter.strSubCode,
            "ResourceTypeSubCode": selectVoucherType.strSubCode,
            "ReqQty": _qty.text,
            "Remarks": _remarks.text
          }));
      Scaffold.of(context).showSnackBar(snackBar("Data send successfully"));
      print("Successfull2");
    }
    else{
      Scaffold.of(context).showSnackBar(snackBar("Field is empty"));
    }
  }

  @override
  Widget build(BuildContext context) {
    final bloc = ContractorProvider.of(context);
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
                  onPressed: () {clearData();},
                  elevation: 0.0,
                  color: Colors.white,
                  child: RaisedButtonText("Clear all"),
                ),
              ],
            ),
          ),
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
          FormsHeadText("Party Name"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: DecorationForms(),
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
                            onChanged: onDataChange2,
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
          FormsHeadText("Phase (cost center)"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: DecorationForms(),
              child: FutureBuilder<List<ItemCostCenter>>(
                  future: itemCostCenterDropdownBloc.itemCostCenterData,
                  builder: (context, snapshot) {
                    return StreamBuilder<ItemCostCenter>(
                        stream: itemCostCenterDropdownBloc.selectedState,
                        builder: (context, item) {
                          return SearchChoices<ItemCostCenter>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectItemCostCenter,
                            displayClearIcon: false,
                            onChanged: onDataChange3,
                            items: snapshot?.data
                                ?.map<DropdownMenuItem<ItemCostCenter>>((e) {
                              return DropdownMenuItem<ItemCostCenter>(
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
          FormsHeadText("Resource Type"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: DecorationForms(),
              child: FutureBuilder<List<VoucherType>>(
                  future: voucherTypeDropdownBloc.voucherTypeDropdownData,
                  builder: (context, snapshot) {
                    return StreamBuilder<VoucherType>(
                        stream: voucherTypeDropdownBloc.selectedState,
                        builder: (context, item) {
                          return SearchChoices<VoucherType>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectVoucherType,
                            displayClearIcon: false,
                            onChanged: onDataChange1,
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
          FormsHeadText("Qty."),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField1,
                builder: (context, snapshot) => TextFormField(
                  controller: _qty,
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
          FormsHeadText("Remarks"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField2,
                builder: (context, snapshot) => TextFormField(
                  controller: _remarks,
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
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Submit",(){
                sendData();
                //print(dateinput.text);
                //print(selectDepartmentName.strSubCode);
                //print(selectItemCostCenter.strSubCode);
                //print(selectVoucherType.strSubCode);
                //print(_qty.text);
                //print(_remarks.text);
                //Scaffold.of(context).showSnackBar(snackBar("Data send successfully"));
                },roundedButtonHomeColor1)),
        ],
      ),
    );
  }
}
