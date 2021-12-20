import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_cost_center_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_current_status_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/voucher_type_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/infrastructure/Models/item_cost_center_model.dart';
import 'package:vvplus_app/infrastructure/Models/item_current_status_model.dart';
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

class PhaseToPhaseTransferBody extends StatefulWidget{
  const PhaseToPhaseTransferBody({Key key}) : super(key: key);
  @override
  State<PhaseToPhaseTransferBody> createState() => MyPhaseToPhaseTransferBody();
}
class MyPhaseToPhaseTransferBody extends State<PhaseToPhaseTransferBody> {

  TextEditingController dateinput = TextEditingController();
  TextEditingController remarks = TextEditingController();
  TextEditingController reqQty = TextEditingController();

  VoucherTypeDropdownBloc voucherTypeDropdownBloc1;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc2;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc3;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc1;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc2;
  ItemCostCenterDropdownBloc itemCostCenterDropdownBloc3;
  ItemCurrentStatusDropdownBloc dropdownBlocItemCurrentStatus;

  VoucherType selectVoucherType1;
  VoucherType selectVoucherType2;
  VoucherType selectVoucherType3;
  ItemCostCenter selectItemCostCenter1;
  ItemCostCenter selectItemCostCenter2;
  ItemCostCenter selectItemCostCenter3;
  ItemCurrentStatus selectItemCurrentStatus;

  double _amount;

  @override
  void initState() {
    voucherTypeDropdownBloc1 = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc2 = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc3 = VoucherTypeDropdownBloc();
    itemCostCenterDropdownBloc1 = ItemCostCenterDropdownBloc();
    itemCostCenterDropdownBloc2 = ItemCostCenterDropdownBloc();
    itemCostCenterDropdownBloc3 = ItemCostCenterDropdownBloc();
    dropdownBlocItemCurrentStatus = ItemCurrentStatusDropdownBloc();
    dateinput.text = "";
    _amount = 0;
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
  void onDataChange6(ItemCostCenter state) {
    setState(() {
      selectItemCostCenter3 = state;
    });
  }

  void onDataChange7(ItemCurrentStatus state) {
    setState(() {
      selectItemCurrentStatus= state;
    });
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
          formsHeadText("Issue To Which Staff"),
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
          formsHeadText("From Which Phase"),
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
          formsHeadText("Location [From]"),
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
                            onChanged: onDataChange4,
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
          formsHeadText("Location [To]"),
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
          //--------------------------------------------------------
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 378,
              width: SizeConfig.getWidth(context),
              decoration: BoxDecoration(
                color: storeContainerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  formsHeadText("Item "),
                  Padding(
                    padding: padding1,
                    child: Container(
                      height: 50, width: 343,
                      decoration: decorationForms(),
                      child: FutureBuilder<List<ItemCurrentStatus>>(
                          future: dropdownBlocItemCurrentStatus.itemCurrentStatusDropdowndata,
                          builder: (context, snapshot) {
                            return StreamBuilder<ItemCurrentStatus>(
                                stream: dropdownBlocItemCurrentStatus.selectedState,
                                builder: (context, item) {
                                  return SearchChoices<ItemCurrentStatus>.single(
                                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                                    underline: "",
                                    padding: 1,
                                    isExpanded: true,
                                    hint: "Search here",
                                    value: selectItemCurrentStatus,
                                    displayClearIcon: false,
                                    onChanged: onDataChange7,
                                    items: snapshot?.data
                                        ?.map<DropdownMenuItem<ItemCurrentStatus>>((e) {
                                      return DropdownMenuItem<ItemCurrentStatus>(
                                        value: e,
                                        child: Text(e.strItemName),
                                      );
                                    })?.toList() ??[],
                                  );
                                }
                            );
                          }
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  formsHeadText("Request Qty. "),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),

                        child: Container(
                          height: 50,
                          padding: padding1,
                          decoration: decoration1(),

                          child: SizedBox(
                            width: 130,

                            child: StreamBuilder<String>(
                                stream: bloc.requestQty,
                                builder: (context, snapshot) {
                                  return TextFormField(
                                    // initialValue: "no",
                                    controller: reqQty,
                                    decoration: InputDecoration(
                                      errorText: snapshot.error,
                                    ),
                                    onChanged: bloc.changerequestQty,
                                    keyboardType: TextInputType.number,
                                    //onSaved: selectItemCurrentStatus.strItemName,

                                    style: simpleTextStyle7(),
                                  );
                                }
                            ),
                          ),
                        ),
                      ),
                      selectItemCurrentStatus!=null ? Container(
                          height: 50, padding: padding1, decoration: decoration1(),
                          child: Center(
                              child: Text(selectItemCurrentStatus.strUnit))):
                      Container(
                          height: 50, padding: padding1, decoration: decoration1(),
                          child: const Center(
                              child: Text("No"))),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    children: [
                      formsHeadText("Rate"),
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      formsHeadText("Amount:"),
                      Text(_amount.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      selectItemCurrentStatus!=null ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                            height: 50, padding: padding1, decoration: decoration1(),
                            child: Center(
                                child: Text(selectItemCurrentStatus.dblQty))),
                      ):
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                            height: 50, padding: padding1, decoration: decoration1(),
                            child: const Center(
                                child: Text("No"))),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),

                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      RaisedButton(
                        onPressed: () {},
                        elevation: 0.0,
                        color: storeContainerColor,
                        child: raisedButtonText("Clear This Item"),

                      ),


                      StreamBuilder<bool>(
                          stream: bloc.submitCheck,
                          builder: (context, snapshot) {
                            return RoundedButtonInput(
                              text: "Add Item to List",
                              press: !snapshot.hasData ? null: (){
                              } ,
                              fontsize1: 12,
                              size1: 0.5,
                              horizontal1: 30,
                              vertical1: 10,
                              color1: Colors.orange,
                              textColor1: textColor1,
                            );
                          }
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          //--------------------------------------------------------
          sizedbox1,
          formsHeadText("Total Amount:"),
          sizedbox1,
          formsHeadText("Remarks"),
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