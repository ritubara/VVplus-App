import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/indentor_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_cost_center_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/voucher_type_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Store_Page_Bloc/branch_to_branch_receive_bloc.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'package:vvplus_app/infrastructure/Models/item_cost_center_model.dart';
import 'package:vvplus_app/infrastructure/Models/voucher_type_model.dart';
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
  State<BranchtoBranchSendBody> createState() => MyBranchtoBranchSendBody();
}
class MyBranchtoBranchSendBody extends State<BranchtoBranchSendBody> {

  TextEditingController dateinput = TextEditingController();
  TextEditingController reqQty = TextEditingController();

  VoucherTypeDropdownBloc voucherTypeDropdownBloc1;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc2;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc3;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc4;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc1;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc2;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc3;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc4;
  IndentorNameDropdownBloc indentorNameDropdownBloc;

  VoucherType selectVoucherType1;
  VoucherType selectVoucherType2;
  VoucherType selectVoucherType3;
  VoucherType selectVoucherType4;
  ItemCostCenter selectItemCostCenter1;
  ItemCostCenter selectItemCostCenter2;
  ItemCostCenter selectItemCostCenter3;
  ItemCostCenter selectItemCostCenter4;
  IndentorName selectIndentorName;

  @override
  void initState() {
    voucherTypeDropdownBloc1 = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc2 = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc3 = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc4 = VoucherTypeDropdownBloc();
    itemCostCenterDropdownBloc1 = ItemCostCenterDropdownBloc();
    itemCostCenterDropdownBloc2 = ItemCostCenterDropdownBloc();
    itemCostCenterDropdownBloc3 = ItemCostCenterDropdownBloc();
    itemCostCenterDropdownBloc4 = ItemCostCenterDropdownBloc();
    indentorNameDropdownBloc = IndentorNameDropdownBloc();
    dateinput.text = "";
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  void onDataChange1(VoucherType state) {
    setState(() {
      selectVoucherType1 = state;
    });
  }
  void onDataChange2(VoucherType state) {
    setState(() {
      selectVoucherType2 = state;
    });
  }
  void onDataChange3(VoucherType state) {
    setState(() {
      selectVoucherType3 = state;
    });
  }
  void onDataChange4(ItemCostCenter state) {
    setState(() {
      selectItemCostCenter1 = state;
    });
  }
  void onDataChange5(ItemCostCenter state) {
    setState(() {
      selectItemCostCenter2 = state;
    });
  }
  void onDataChange6(IndentorName state) {
    setState(() {
      selectIndentorName = state;
    });
  }
  void onDataChange7(VoucherType state) {
    setState(() {
      selectVoucherType4 = state;
    });
  }
  void onDataChange8(ItemCostCenter state) {
    setState(() {
      selectItemCostCenter3 = state;
    });
  }
  void onDataChange9(ItemCostCenter state) {
    setState(() {
      selectItemCostCenter4 = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BranchToBranchReceiveProvider.of(context);
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
          formsHeadText("Voucher No. Date"),
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
          formsHeadText("From Branch"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<ItemCostCenter>>(
                  future: itemCostCenterDropdownBloc1.itemCostCenterData,
                  builder: (context, snapshot) {
                    return StreamBuilder<ItemCostCenter>(
                        stream: itemCostCenterDropdownBloc1.selectedState,
                        builder: (context, item) {
                          return SearchChoices<ItemCostCenter>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectItemCostCenter1,
                            displayClearIcon: false,
                            onChanged: onDataChange5,
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
          formsHeadText("From Phase"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<ItemCostCenter>>(
                  future: itemCostCenterDropdownBloc2.itemCostCenterData,
                  builder: (context, snapshot) {
                    return StreamBuilder<ItemCostCenter>(
                        stream: itemCostCenterDropdownBloc2.selectedState,
                        builder: (context, item) {
                          return SearchChoices<ItemCostCenter>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectItemCostCenter2,
                            displayClearIcon: false,
                            onChanged: onDataChange6,
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
          formsHeadText("From Godown"),

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

          formsHeadText("To Branch"),

          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<ItemCostCenter>>(
                  future: itemCostCenterDropdownBloc3.itemCostCenterData,
                  builder: (context, snapshot) {
                    return StreamBuilder<ItemCostCenter>(
                        stream: itemCostCenterDropdownBloc3.selectedState,
                        builder: (context, item) {
                          return SearchChoices<ItemCostCenter>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectItemCostCenter3,
                            displayClearIcon: false,
                            onChanged: onDataChange8,
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
          formsHeadText("To Phase"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<ItemCostCenter>>(
                  future: itemCostCenterDropdownBloc4.itemCostCenterData,
                  builder: (context, snapshot) {
                    return StreamBuilder<ItemCostCenter>(
                        stream: itemCostCenterDropdownBloc4.selectedState,
                        builder: (context, item) {
                          return SearchChoices<ItemCostCenter>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectItemCostCenter4,
                            displayClearIcon: false,
                            onChanged: onDataChange9,
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
          formsHeadText("To Godown"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<VoucherType>>(
                  future: voucherTypeDropdownBloc3.voucherTypeDropdownData,
                  builder: (context, snapshot) {
                    return StreamBuilder<VoucherType>(
                        stream: voucherTypeDropdownBloc3.selectedState,
                        builder: (context, item) {
                          return SearchChoices<VoucherType>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectVoucherType3,
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
          formsHeadText("Vehicle No."),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: decorationForms(),
              child: FutureBuilder<List<VoucherType>>(
                  future: voucherTypeDropdownBloc4.voucherTypeDropdownData,
                  builder: (context, snapshot) {
                    return StreamBuilder<VoucherType>(
                        stream: voucherTypeDropdownBloc4.selectedState,
                        builder: (context, item) {
                          return SearchChoices<VoucherType>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectVoucherType4,
                            displayClearIcon: false,
                            onChanged: onDataChange4,
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
          formsHeadText("Indent Selection"),
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
                            onChanged: onDataChange6,
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
          Padding(
              padding: padding4,
              child: roundedButtonHome2("Submit",
                      (){showAlertDialog(context);},
                  roundedButtonHomeColor1)),
        ],
      ),
    );
  }

}