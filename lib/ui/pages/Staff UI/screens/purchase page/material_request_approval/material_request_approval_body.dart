import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class MaterialRequestApprovalBody extends StatefulWidget{
  const MaterialRequestApprovalBody({Key key}) : super(key: key);
  @override
  State<MaterialRequestApprovalBody> createState() => myMaterialRequestApprovalBody();
}
class myMaterialRequestApprovalBody extends State<MaterialRequestApprovalBody> {

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
          sizedbox1,
          FormsHeadText("Indant Date"),
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
          FormsHeadText("Indant Selection"),
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
          //SizedBox(height: 10,),
          const InformationBoxContainer1(),
          //SizedBox(height: 10,),
          const InformationBoxContainer1(),
          sizedbox1,
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Approve",(){},roundedButtonHomeColor1)),
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Deny",(){},roundedButtonHomeColor2)),
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Wait",(){},roundedButtonHomeColor3)),
        ],
      ),
    );
  }

}