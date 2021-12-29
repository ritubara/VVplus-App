import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/department_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_current_status_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/voucher_type_dropdown_bloc.dart';
import 'package:vvplus_app/infrastructure/Models/department_name_model.dart';
import 'package:vvplus_app/infrastructure/Models/voucher_type_model.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/cheque%20entry/custom_tab_bar.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ChequeEntryReceiveBody extends StatefulWidget {
  const ChequeEntryReceiveBody({Key key}) : super(key: key);
  @override
  State<ChequeEntryReceiveBody> createState() => _ChequeEntryReceiveBody();
}
class _ChequeEntryReceiveBody extends State<ChequeEntryReceiveBody> {

  TextEditingController chequeReceivingDateInput = TextEditingController();
  DepartmentNameDropdownBloc departmentNameDropdownBloc;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc1;
  VoucherTypeDropdownBloc voucherTypeDropdownBloc2;
  ItemCurrentStatusDropdownBloc itemCurrentStatusDropdownBloc;

  DepartmentName selectDepartmentName;
  VoucherType selectVoucherType1;
  VoucherType selectVoucherType2;

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
  @override
  void initState() {
    chequeReceivingDateInput.text = "";
    departmentNameDropdownBloc = DepartmentNameDropdownBloc();
    voucherTypeDropdownBloc1 = VoucherTypeDropdownBloc();
    voucherTypeDropdownBloc2 = VoucherTypeDropdownBloc();
    itemCurrentStatusDropdownBloc = ItemCurrentStatusDropdownBloc();
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

              formsHeadText("Voucher Type"),

              const NormalTextFormField(),

              Padding(padding: paddingForms),

              formsHeadText("Cheque Receiving Date"),

              Container(
                padding: dateFieldPadding,
                height: dateFieldHeight,
                child: Center(
                  child: TextFormField(
                    controller: chequeReceivingDateInput,
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
                          chequeReceivingDateInput.text = formattedDate;
                        });
                      } else {
                      }
                    },
                  ),
                ),
              ),

              Padding(padding: paddingForms),

              formsHeadText("Payment Type"),

              const DropdownForm(),

              Padding(padding: paddingForms),

              formsHeadText("Credit Account (customer name)"),

              const DateTextFormField(),

              Padding(padding: paddingForms),

              formsHeadText("Debit Account (company):"),

              Padding(padding: paddingForms),

              formsHeadText("Drawn Bank"),

              const DropdownForm(),

              Padding(padding: paddingForms),

              formsHeadText("Customer Info:"),

              Padding(padding: paddingForms),

              formsHeadText("Cheque No."),

              const NormalTextFormField(),

              Padding(padding: paddingForms),

              formsHeadText("Amount"),

              const NormalTextFormField(),

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