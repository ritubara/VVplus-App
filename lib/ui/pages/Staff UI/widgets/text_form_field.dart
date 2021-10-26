import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class DateTextFormField extends StatefulWidget {
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
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 48,
      child: Center(
        child: TextFormField(
          controller: dateinput,
          decoration: const InputDecoration(
            filled: true,
            fillColor: PrimaryColor8,
            focusColor: boxDecorationColor2,
            suffixIcon: Icon(Icons.calendar_today, color: iconColor1,),
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

            if (pickedDate != null) {
              print(pickedDate);
              String formattedDate = DateFormat('yyyy-MM-dd').format(
                  pickedDate);
              print(formattedDate);

              setState(() {
                dateinput.text = formattedDate;
              });
            } else {
              print("Date is not selected");
            }
          },
        ),
      ),
    );
  }
}


// for dropdown form
class DropdownForm extends StatefulWidget {
  @override
  State<DropdownForm> createState() => MyDropdownForm();
}
class MyDropdownForm extends State<DropdownForm> {
  int valueChoose = 42;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: padding1,
          child: Center(
            child: Container(
              decoration: DecorationForms(),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search),
                      ),
                      Text("Search here"),
                    ],
                  ),
                  dropdownColor: PrimaryColor3,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  iconSize: 20,
                  isExpanded: true,
                  iconEnabledColor: PrimaryColor4,
                  style: const TextStyle(color: PrimaryColor2, fontSize: 16),
                  value: valueChoose,
                  items: <DropdownMenuItem<int>>[
                    new DropdownMenuItem(
                      child: new Text('\tValue 1'),
                      value: 0,
                    ),
                    new DropdownMenuItem(
                      child: new Text('\tValue 2'),
                      value: 42,
                    ),
                  ],
                  onChanged: (Value) {
                    setState(() {
                      valueChoose = Value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//dropdown form for container
class DropdownFormCont extends StatefulWidget {
  @override
  State<DropdownFormCont> createState() => MyDropdownFormCont();
}
class MyDropdownFormCont extends State<DropdownFormCont> {
  int valueChoose = 42;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: padding1,
          child: Center(
            child: Container(
              decoration: ContainerDecorationForms(),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  hint: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search),
                      ),
                      Text("Search here"),
                    ],
                  ),
                  dropdownColor: PrimaryColor3,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  iconSize: 20,
                  isExpanded: true,
                  iconEnabledColor: PrimaryColor4,
                  style: const TextStyle(color: PrimaryColor2, fontSize: 16),
                  value: valueChoose,
                  items: <DropdownMenuItem<int>>[
                    new DropdownMenuItem(
                      child: new Text('\tValue 1'),
                      value: 0,
                    ),
                    new DropdownMenuItem(
                      child: new Text('\tValue 2'),
                      value: 42,
                    ),
                  ],
                  onChanged: (Value) {
                    setState(() {
                      valueChoose = Value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NormalTextFormField extends StatefulWidget {
  @override
  State<NormalTextFormField> createState() => MyNormalTextFormField();
}
class MyNormalTextFormField extends State<NormalTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: padding1,
      decoration: decoration1(),
      child: SizedBox(
        width: 320,
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: PrimaryColor4),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: PrimaryColor4),
                borderRadius: BorderRadius.circular(10)),
          ),
          keyboardType: TextInputType.text,
          style: simpleTextStyle7(),
        ),
      ),
    );
  }
}
