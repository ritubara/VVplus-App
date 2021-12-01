import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Contractors_page_bloc/daily_manpower_page_bloc.dart';
import 'package:vvplus_app/infrastructure/Repository/strrecord_dropdown.dart';
import 'package:vvplus_app/infrastructure/other%20data/dropdown.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class DailyManpowerBody extends StatefulWidget {
  const DailyManpowerBody({Key key}) : super(key: key);
  @override
  State<DailyManpowerBody> createState() => myDailyManpowerBody();
}
class myDailyManpowerBody extends State<DailyManpowerBody> {
  Xml2Json xml2json = new Xml2Json();
  //final String URL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FPostIndent?StrRecord=${'{"StrIndTypeCode":"IND","StrSiteCode":"AD","StrIndNo":"11","StrIndDate":"10/11/2021","StrDepartmentCode":"AD2","StrIndentorCode":"SG344","StrPreparedByCode":"SA","StrIndGrid":[{"StrItemCode":"PN1","DblQuantity":"100","StrCostCenterCode":"AD1","StrRequiredDate":"10/11/2021","StrRemark":"remark1"}]}'}";
  final String URL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Indentor","StrSiteCode":"AS","StrV_Type":"IND","StrChkNonStockabl// e":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostC// enterCode":""},{"StrCostCenterCode":""}]}'}";
  //final String URL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FPostIndent?StrRecord={"StrIndTypeCode":"IND","StrSiteCode":"AD","StrIndNo":"11","StrIndDate":"10/11/2021","StrDepartmentCode":"AD2","StrIndentorCode":"SG344","StrPreparedByCode":"SA","StrIndGrid":[{"StrItemCode":"PN1","DblQuantity":"100","StrCostCenterCode":"AD1","StrRequiredDate":"10/11/2021","StrRemark":"remark1"}]}";
  Future getResponse() async {
    http.Response response = await http.get(Uri.parse(URL));
    print('URL: $URL \n status: ${response.statusCode}');
    print('Response: $response');
    return response.statusCode == 200 ? jsonDecode(response.body) : null;
  }
  Future getResponse1() async {
    http.Response response = await http.get(Uri.parse(URL));
    if (response.statusCode == 200) {
      print(response.statusCode);
      print("working");
      //print(json.decode(response.body));
    } else {
      print(response.statusCode);
    }
  }
  getData1()async{
      http.Response res = await http.get(Uri.parse(URL));
      xml2json.parse(res.body);
      var jsondata = xml2json.toGData();
      var data = json.decode(jsondata);
      //buildlists(data);
     print(data);
  }

  TextEditingController dateinput = TextEditingController();
  final TextEditingController _qty = TextEditingController();
  final TextEditingController _remarks = TextEditingController();
  //final GlobalKey _key = GlobalKey();
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }
  void clearData(){
    dateinput.clear();
    _qty.clear();
    _remarks.clear();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = ContractorProvider.of(context);
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
                  onPressed: () {clearData();},
                  elevation: 0.0,
                  color: Colors.white,
                  child: RaisedButtonText("Clear all"),
                ),
              ],
            ),
          ),
          FormsHeadText("Date"),
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
          FormsHeadText("Party Name"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50,
              width: 343,
              decoration: DecorationForms(),
              child: StreamBuilder(
                stream: bloc.outDropField1,
                  builder: (context, snapshot) {
                    return SearchChoices.single(
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      underline: "",
                      padding: 1,
                      isExpanded: true,
                      hint: "Search here",
                      value: snapshot.data,
                      onChanged: bloc.inDropField1,
                      items:(bloc.names != null && bloc.names.isNotEmpty)
                          ? bloc.names.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),);}).toList():[],
                    );
                  }
              ),
            ),
          ),
          sizedbox1,
          FormsHeadText("Phase (cost center)"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50,
              width: 343,
              decoration: DecorationForms(),
              child: StreamBuilder(
                stream: bloc.outDropField2,
                  builder: (context, snapshot) {
                    return SearchChoices.single(
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      underline: "",
                      padding: 1,
                      isExpanded: true,
                      hint: "Search here",
                      value: snapshot.data,
                      onChanged: bloc.inDropField2,
                      items: (bloc.names != null && bloc.names.isNotEmpty)
                          ? bloc.names.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),);}).toList():[],
                    );
                  }
              ),
            ),
          ),
          sizedbox1,
          FormsHeadText("Resource Type"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50,
              width: 343,
              decoration: DecorationForms(),
              child: StreamBuilder(
                stream: bloc.outDropField3,
                  builder: (context, snapshot) {
                    return SearchChoices.single(
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      underline: "",
                      padding: 1,
                      isExpanded: true,
                      hint: "Search here",
                      value: snapshot.data,
                      onChanged: bloc.inDropField3,
                      items: (bloc.names != null && bloc.names.isNotEmpty)
                          ? bloc.names.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),);}).toList():[],
                    );
                  }
              ),
            ),
          ),
          sizedbox1,
          FormsHeadText("Qty."),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField1,
                builder: (context, snapshot) => TextFormField(
                  controller: _qty,
                  onChanged: bloc.intextField1,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: PrimaryColor8,
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
          FormsHeadText("Remarks"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField2,
                builder: (context, snapshot) => TextFormField(
                  controller: _remarks,
                  onChanged: bloc.intextField2,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: PrimaryColor8,
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
          MyHomePage11(),
          sizedbox1,
          //MyHomePage1(),
          Padding(
              padding: padding4,
              child: RoundedButtonHome2("Submit",(){getData1();},roundedButtonHomeColor1)),
        ],
      ),
    );
  }
}
