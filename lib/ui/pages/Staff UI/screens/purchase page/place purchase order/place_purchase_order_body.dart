import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/indentor_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/voucher_type_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Purchase_Page_Bloc/place_purchase_order_page_bloc.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'package:vvplus_app/infrastructure/Models/voucher_type_model.dart';
import 'package:vvplus_app/infrastructure/Repository/department_name_repository.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/place%20purchase%20order/container_data.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class PlacePurchaseOrderBody extends StatefulWidget{
  const PlacePurchaseOrderBody({Key key}) : super(key: key);
  @override
  State<PlacePurchaseOrderBody> createState() => MyPlacePurchaseOrderBody();
}
class MyPlacePurchaseOrderBody extends State<PlacePurchaseOrderBody> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController remarks = TextEditingController();
  VoucherTypeDropdownBloc voucherTypeDropdownBloc;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc1;
  IndentorNameDropdownBloc dropdownBlocIndentorName;
  VoucherType selectVoucherType;
  VoucherType selectVoucherType1;
  IndentorName selectIndentName;

  void onDataChange1(VoucherType state) {
    setState(() {
      selectVoucherType = state;
    });
  }
  void onDataChange2(VoucherType state) {
    setState(() {
      selectVoucherType1 = state;
    });
  }
  void onDataChange3(IndentorName state) {
    setState(() {
      selectIndentName = state;
    });
  }

  @override
  void initState() {
    dateinput.text = "";
    voucherTypeDropdownBloc = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc1 = VoucherTypeDropdownBloc();
    dropdownBlocIndentorName = IndentorNameDropdownBloc();
    super.initState();
  }
  Future<void> _refresh() async{
    await Future.delayed(const Duration(milliseconds: 800),() {
      setState(() {
        DepartmentNameRepository().getData();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = PlacePurchaseOrderProvider.of(context);
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      edgeOffset: 20,
      displacement: 200,
      strokeWidth: 5,
      onRefresh: _refresh,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedbox1,
            formsHeadText("Voucher No:"),
            sizedbox1,
            formsHeadText("Voucher Type"),
            Padding(
              padding: padding1,
              child: Container(
                height: 50, width: 343,
                decoration: decorationForms(),
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
            formsHeadText("Supplier"),
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
            formsHeadText("Indent Selection"),
            Padding(
              padding: padding1,
              child: Container(
                height: 50, width: 343,
                decoration: decorationForms(),
                child: FutureBuilder<List<IndentorName>>(
                    future: dropdownBlocIndentorName.indentorNameDropdownData,
                    builder: (context, snapshot) {
                      return StreamBuilder<IndentorName>(
                          stream: dropdownBlocIndentorName.selectedState,
                          builder: (context, item) {
                            return SearchChoices<IndentorName>.single(
                              icon: const Icon(Icons.keyboard_arrow_down_sharp),
                              underline: "",
                              padding: 1,
                              isExpanded: true,
                              hint: "Search here",
                              value: selectIndentName,
                              displayClearIcon: false,
                              onChanged: onDataChange3,
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
            formsHeadText("PO Valid Date"),
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
            //const InformationBoxContainer2(),
            const PlacePurchaseOrderContainerData(),

            sizedbox1,
            formsHeadText("Remarks:"),
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
      ),
    );
  }

}