import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/indentor_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';
import 'package:http/http.dart' as http;

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vvplus_app/infrastructure/Models/material_req_approval_model.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'dart:convert';
import 'package:vvplus_app/ui/widgets/constants/size.dart'; // for using json.decode()

class MaterialRequestApprovalBody extends StatefulWidget{
  const MaterialRequestApprovalBody({Key key}) : super(key: key);
  @override
  State<MaterialRequestApprovalBody> createState() => myMaterialRequestApprovalBody();
}
class myMaterialRequestApprovalBody extends State<MaterialRequestApprovalBody> {

  TextEditingController dateinput = TextEditingController();
  IndentorNameDropdownBloc _dropdownBloc;
  @override
  void initState() {
    dateinput.text = "";
    _dropdownBloc = IndentorNameDropdownBloc();
    super.initState();
  }
  IndentorName selectIndentorName;
  void onDataChange1(IndentorName state) {
    setState(() {
      selectIndentorName = state;
    });
  }
  sendData() {
    http.post(Uri.parse(""),
        body: json.encode({
          "IndentDate":dateinput.text,
          "IndentSelection":selectIndentorName.strSubCode

        }));
    print("Successfull2");
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
              height: 50, width: 343,
              decoration: DecorationForms(),
              child: FutureBuilder<List<IndentorName>>(
                  future: _dropdownBloc.indentorNameDropdownData,
                  builder: (context, snapshot) {
                    return StreamBuilder<IndentorName>(
                        stream: _dropdownBloc.selectedState,
                        builder: (context, item) {
                          return SearchChoices<IndentorName>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectIndentorName,
                            displayClearIcon: false,
                            onChanged: onDataChange1,
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






class Apipage extends StatefulWidget {
  //Apipage({this.app});
  //final
  @override
  State<StatefulWidget> createState() => _Apipage();
}

class _Apipage extends State<Apipage> {
  final referenceDatabse = FirebaseDatabase.instance;

  List<MaterialReqPost> _MaterialReqPost = List<MaterialReqPost>();

  Future<List<MaterialReqPost>> _fetchData() async {
    const URL = "https://vv-plus-app-default-rtdb.firebaseio.com/DepartmentName.json";

    final response = await http.get(Uri.parse(URL));

    var materialReqPost = List<MaterialReqPost>();
    if (response.statusCode == 200) {
      //final data = json.decode(response.body);
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["dataKey"];
      print(data[0]["IndentSubCode"]);
      for (var materialReqJson in data) {
        materialReqPost.add(MaterialReqPost.fromJson(materialReqJson));
      }
    }
    return materialReqPost;
  }


  @override
  Widget build(BuildContext context) {
    _fetchData().then((value) {
      setState(() {
        _MaterialReqPost.addAll(value);
      });
    });
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
         //itemCount: _MaterialReqPost.length,
          itemBuilder: (context, index)
    {
      return Card(
        /* alignment: Alignment.center,
              height: 108,
              width: SizeConfig.getWidth(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: PrimaryColor3,
                boxShadow: const [
                  BoxShadow(
                    color: PrimaryColor5,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),*/
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Helllo",
                        //_MaterialReqPost[index].IndentSubCode,
                        style: containerTextStyle1(),
                      ),
                      Text("How r u",
                        //_MaterialReqPost[index].IndentSubCode,
                        style: containerTextStyle1(),
                      ),
                    ]
                ),
              ),
            ]
        ),
      );
    }
    ),
              /* const SizedBox(height: 13,),
                        Text(
                          "GHSN/SAC: 7307",
                          style: containerTextStyle4(),
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          "Order no.: AA 16/GORD",
                          style: containerTextStyle3(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Order Qty.:\nReceive Qty.:\nRate:\nAmount:",
                                style: containerTextStyle2(),
                              ),
                              Text(
                                "Remarks:",
                                style: containerTextStyle4(),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 15),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "50 Pc\n50 Pc\n150\n7500",
                                    style: containerTextStyle2(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, top: 10),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(icon15),
                                  const SizedBox(height: 15.5,),
                                  Text(
                                    "Edit",
                                    style: containerTextStyle5(),
                                  ),
                                  const SizedBox(height: 7,),
                                  Text(
                                    "Inc.Tax",
                                    style: containerTextStyle3(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );

            /*ListTile(
                  leading: Image.network(
                    _loadedPhotos[index]["thumbnailUrl"],
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  title: Text(_loadedPhotos[index]['title']),
                  subtitle:
                  Text('Photo ID: ${_loadedPhotos[index]["id"]}'),
                );*/
          },
        ),*/
      ),
    );
  }
}