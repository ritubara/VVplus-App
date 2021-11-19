import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/dropdown_button_item_list.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

// date text form field
var dateFieldPadding = const EdgeInsets.symmetric(horizontal: 35);
double dateFieldHeight = 48;
InputDecoration dateFieldDecoration(){
  return const InputDecoration(
    filled: true,
    fillColor: PrimaryColor8,
    focusColor: boxDecorationColor2,
    suffixIcon: Icon(Icons.calendar_today, color: iconColor1,),
    //hintText: "Enter Date",
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: PrimaryColor9)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        borderSide: BorderSide(color: PrimaryColor9)
    ),
    //prefixIcon: Icon(Icons.calendar_today),
    //labelText: "Enter Date"
  );
}

// drop down form field
var dropDownFieldIcon1 = const Icon(Icons.search);
String dropDownFieldText = "Search here";
var dropDownFieldIcon2 = const Icon(Icons.keyboard_arrow_down_sharp);
var dropDownFieldStyle = const TextStyle(color: PrimaryColor2, fontSize: 16);

// normal text input field

OutlineInputBorder textFieldBorder(){
  return OutlineInputBorder(
      borderSide: const BorderSide(color: PrimaryColor9),
      borderRadius: BorderRadius.circular(10));
}


class DateTextFormField extends StatefulWidget {
  const DateTextFormField({Key key}) : super(key: key);

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
      padding: const EdgeInsets.symmetric(horizontal: 35),
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
                borderSide: BorderSide(color: PrimaryColor9)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: PrimaryColor9)
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
              //print(pickedDate);
              String formattedDate = DateFormat('yyyy-MM-dd').format(
                  pickedDate);
             // print(formattedDate);

              setState(() {
                dateinput.text = formattedDate;
              });
            } else {
              //print("Date is not selected");
            }
          },
        ),
      ),
    );
  }
}


// for dropdown form
class DropdownForm extends StatefulWidget {
  const DropdownForm({Key key}) : super(key: key);

  @override
  State<DropdownForm> createState() => MyDropdownForm();
}
class MyDropdownForm extends State<DropdownForm> {
  //int valueChoose = 42;
  @override
  Widget build(BuildContext context) {
    final bloc = MaterialProvider.of(context);
    return Padding(
      padding: padding1,
      child: Container(
        decoration: DecorationForms(),
        child: DropdownButtonHideUnderline(
          child: StreamBuilder(
        stream: bloc.outDropField1,
              builder: (context, snapshot) {
                return DropdownButtonFormField<String>(
                  hint: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search), onPressed: () {  },
                      ),
                      const Text("Search here"),
                    ],
                  ),
                  dropdownColor: PrimaryColor3,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  iconSize: 20,
                  isExpanded: true,
                  iconEnabledColor: PrimaryColor4,
                  style: const TextStyle(color: PrimaryColor2, fontSize: 16),
                  validator: (value) => value == null
                      ? 'Field required' : null,
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
    );
  }
}

//dropdown form for container
class DropdownFormCont extends StatefulWidget {
  const DropdownFormCont({Key key}) : super(key: key);
  @override
  State<DropdownFormCont> createState() => MyDropdownFormCont();
}
class MyDropdownFormCont extends State<DropdownFormCont> {
  final _formKey = GlobalKey<FormState>();
  bool _autovalidate = false;
  String selectedSalutation;
  String name;

  @override
  Widget build(BuildContext context) {
    final bloc = MaterialProvider.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: padding1,
          child: Center(
            child: Container(
              decoration: ContainerDecorationForms(),
              child: DropdownButtonHideUnderline(
              child: StreamBuilder(
              stream: bloc.outDropField2,
                  builder: (context, snapshot) {
                    return DropdownButtonFormField<String>(
                      hint: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.search), onPressed: () {  },
                          ),
                          const Text("Search here"),
                        ],
                      ),
                      dropdownColor: PrimaryColor3,
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      iconSize: 20,
                      isExpanded: true,
                      iconEnabledColor: PrimaryColor4,
                      style: const TextStyle(color: PrimaryColor2, fontSize: 16),
                      validator: (value) => value == null
                          ? 'Field required' : null,
                      value: snapshot.data,
                      onChanged: bloc.inDropField2,
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
        ),
      ],
    );
  }
}

class NormalTextFormField extends StatefulWidget {
  const NormalTextFormField({Key key}) : super(key: key);

  @override
  State<NormalTextFormField> createState() => MyNormalTextFormField();
}
class MyNormalTextFormField extends State<NormalTextFormField> {
  @override
  Widget build(BuildContext context) {
    final bloc = MaterialProvider.of(context);
    return Container(
      height: 50,
      padding: padding1,
      decoration: decoration1(),
      child: SizedBox(
        width: 320,
        child: StreamBuilder<String>(
          stream: bloc.outtextField,
          builder: (context, snapshot) => TextFormField(
            onChanged: bloc.intextField,
            decoration: InputDecoration(
              filled: true,
              fillColor: PrimaryColor8,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: PrimaryColor9),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: PrimaryColor9),
                  borderRadius: BorderRadius.circular(10)),
                errorText: snapshot.error
            ),
            keyboardType: TextInputType.text,
            style: simpleTextStyle7(),
          ),
        ),
      ),
    );
  }
}
