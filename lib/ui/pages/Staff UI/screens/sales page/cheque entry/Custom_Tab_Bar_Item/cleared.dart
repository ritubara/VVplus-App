import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/voucher_type_dropdown_bloc.dart';
import 'package:vvplus_app/infrastructure/Models/voucher_type_model.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/cheque%20entry/custom_tab_bar.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ChequeEntryClearedBody extends StatefulWidget {
  const ChequeEntryClearedBody({Key key}) : super(key: key);
  @override
  State<ChequeEntryClearedBody> createState() => _ChequeEntryReceiveBody();
}
class _ChequeEntryReceiveBody extends State<ChequeEntryClearedBody> {

  TextEditingController depositUpToDateInput = TextEditingController();
  TextEditingController clearedDateInput = TextEditingController();
  VoucherTypeDropdownBloc voucherTypeDropdownBloc;
  VoucherType selectVoucherType;

  void onDataChange(VoucherType state) {
    setState(() {
      selectVoucherType = state;
    });
  }
  @override
  void initState() {
    depositUpToDateInput.text = "";
    clearedDateInput.text = "";
    voucherTypeDropdownBloc = VoucherTypeDropdownBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(padding: EdgeInsets.symmetric(vertical: 70)),

              formsHeadText("Deposit Up To"),

              Container(
                padding: dateFieldPadding,
                height: dateFieldHeight,
                child: Center(
                  child: TextFormField(
                    controller: depositUpToDateInput,
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
                          depositUpToDateInput.text = formattedDate;
                        });
                      } else {
                      }
                    },
                  ),
                ),
              ),

              Padding(padding: paddingForms),

              formsHeadText("Choose Cheque"),

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
                                onChanged: onDataChange,
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

              Padding(padding: paddingForms),

              formsDetailText("Bank:"),

              Padding(padding: paddingForms),

              formsDetailText("Name of Customer:"),

              Padding(padding: paddingForms),

              formsDetailText("Cheque Date:"),

              Padding(padding: paddingForms),

              formsDetailText("Bank:"),

              Padding(padding: paddingForms),

              formsDetailText("Amount:"),

              Padding(padding: paddingForms),

              formsDetailText("Size:"),

              Padding(padding: paddingForms),

              formsHeadText("Cleared Date"),

              Container(
                padding: dateFieldPadding,
                height: dateFieldHeight,
                child: Center(
                  child: TextFormField(
                    controller: clearedDateInput,
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
                          clearedDateInput.text = formattedDate;
                        });
                      } else {
                      }
                    },
                  ),
                ),
              ),

              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 40),
                  child: roundedButtonHome("Submit", () {})),
            ],
          ),
        ],
      ),
    );
  }
}