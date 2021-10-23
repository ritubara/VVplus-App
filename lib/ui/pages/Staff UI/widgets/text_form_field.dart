import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

class DateTextFormField extends StatefulWidget{
  @override
  _DateTextFormFieldState createState() => _DateTextFormFieldState();
}

class _DateTextFormFieldState extends State<DateTextFormField> {
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
    height:100,
    child:Center(
    child:TextFormField(
    controller: dateinput,
    decoration: const InputDecoration(
      filled: true,
      focusColor: boxDecorationColor1,
        suffixIcon: Icon(Icons.calendar_today,color: iconColor1,),
        //hintText: "Enter Date",
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: TextColor4)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: TextColor4)
        ),
        
    //prefixIcon: Icon(Icons.calendar_today),
    //labelText: "Enter Date"
    ),
    readOnly: true,
    onTap: () async {
    DateTime pickedDate = await showDatePicker(
    context: context, initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101)
    );

    if(pickedDate != null ){
    print(pickedDate);
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    print(formattedDate);

    setState(() {
    dateinput.text = formattedDate;
    });
    }else{
    print("Date is not selected");
    }
    },
    ),
    ),
    );
  }
}