import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/indentor_name_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_cost_center_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_current_status_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/Model/post_data.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'package:vvplus_app/infrastructure/Models/item_cost_center_model.dart';
import 'package:vvplus_app/infrastructure/Models/item_current_status_model.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

//=============================================================================//

Future postData(String indentDateInput, String reqQty, String reqDateInput, String remarks) async {
  final String URL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FPostIndent?StrRecord=${'{"StrIndTypeCode":"IND","StrSiteCode":"AD","StrIndNo":"11","StrIndDate":"$indentDateInput","StrDepartmentCode":"AD2","StrIndentorCode":"SG344","StrPreparedByCode":"SA","StrIndGrid":[{"StrItemCode":"PN1","DblQuantity":"$reqQty","StrCostCenterCode":"AD1","StrRequiredDate":"$reqDateInput","StrRemark":"$remarks"}]}'}";
  http.Response response = await http.get(Uri.parse(URL));
  print('URL: $URL \n status: ${response.statusCode}');
  if (response.statusCode == 200) {
    print('URL: $URL \n status: ${response.statusCode}');
    print("working");
    print('Response: $response');
    print(json.decode(response.body));
  } else {
    print(response.statusCode);
  }
}

//=============================================================================
class MaterialEntryBody extends StatefulWidget {

  const MaterialEntryBody({Key key}) : super(key: key);
  @override
  State<MaterialEntryBody> createState() => myMaterialEntryBody();
}

class myMaterialEntryBody extends State<MaterialEntryBody> {

  TextEditingController IntendDateInput = TextEditingController();
  TextEditingController ReqDateInput = TextEditingController();
  TextEditingController indentType = TextEditingController();
  TextEditingController item = TextEditingController();
  TextEditingController ReqQty = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController costCenter = TextEditingController();
  TextEditingController Remarks = TextEditingController();

  String dropdownValue = 'Choose an option';
  IndentorNameDropdownBloc dropdownBlocIndentorName;
  ItemCurrentStatusDropdownBloc dropdownBlocItemCurrentStatus;
  ItemCostCenterDropdownBloc dropdownBlocItemCostCenter;
  double _amount;

  final GlobalKey<FormState> _formKey = GlobalKey();
  String Item = "";
  String Qty = "";
  String Rate="";

  void getDropDownItem(){
    setState(() {
      Item = dropdownValue ;
    });
  }
  _calculation() {
      _amount = double.parse(ReqQty.text) * double.parse(ReqQty.text);

  }

  @override
  void initState() {
    IntendDateInput.text = "";
    ReqDateInput.text="";
    dropdownBlocIndentorName = IndentorNameDropdownBloc();
    dropdownBlocItemCurrentStatus = ItemCurrentStatusDropdownBloc();
    dropdownBlocItemCostCenter = ItemCostCenterDropdownBloc();
    _amount = 0;
    super.initState();
  }

  IndentorName selectIndentName;
  ItemCurrentStatus selectItemCurrentStatus;
  ItemCostCenter selectItemCostCenter;
  void onDataChange1(IndentorName state) {
    setState(() {
      selectIndentName = state;
    });
  }
  void onDataChange2(ItemCurrentStatus state) {
    setState(() {
      selectItemCurrentStatus= state;
    });
  }
  void onDataChange3(ItemCostCenter state) {
    setState(() {
      selectItemCostCenter = state;
    });
  }

  bool pressed = false;
  int valueChoose = 4;

  onClear(){
    ReqDateInput.clear();
    IntendDateInput.clear();
    Remarks.clear();
  }
  @override
  void dispose() {
    super.dispose();
  }
  checkData(){
    if(selectItemCurrentStatus.strItemName != null){
      print(selectItemCurrentStatus.dblQty);
      setState(() {
        selectItemCurrentStatus.strCostCenterName;
      });
    }
    else{
      print("No");
    }
  }
  void onDataChange4(ItemCurrentStatus state) {
    setState(() {
      selectItemCurrentStatus.strCostCenterName = state as String;
    });
  }
  sendData() {
    http.post(Uri.parse(
        "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataMaterialRequestEntry.json"),
        body: json.encode({
          "IndentSubCode":selectIndentName.strSubCode,
          "IntendDate":IntendDateInput.text,
          "ItemName":selectItemCurrentStatus.strItemName,
          "ReqQty":ReqQty.text,
          "ItemUnit":selectItemCurrentStatus.strUnit,
          "Rate":selectItemCurrentStatus.dblQty,
          "ItemSubCode":selectItemCostCenter.strSubCode,
          "ReqDate":ReqDateInput.text,
          "Remarks":Remarks.text
        }));
    print("Successfull2");
  }

  @override
  Widget build(BuildContext context) {
    final bloc = MaterialProvider.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: paddingForms,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton(
                  onPressed: () {onClear();},
                  elevation: 0.0,
                  color: Colors.white,
                  child: RaisedButtonText("Clear all"),
                ),
              ],
            ),
          ),

          FormsHeadText("Indent Type"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: DecorationForms(),
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

          const Padding(padding: EdgeInsets.all(10)),

          FormsHeadText("Indent Date"),
          Container(
            padding: dateFieldPadding,
            height: dateFieldHeight,
            child: Center(
              child: TextFormField(
                controller: IntendDateInput,
                decoration: dateFieldDecoration(),
                readOnly: true,
                onTap: () async {
                  DateTime pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101)
                  );
                  if (pickedDate != null) {
                    String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                    setState(() {
                      IntendDateInput.text = formattedDate;
                    });
                  }
                },
              ),
            ),
          ),

          //============================================================ FormsContainer
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 378,
            width: SizeConfig.getWidth(context),
            decoration: BoxDecoration(
              color: StoreContainerColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.all(10)),
                FormsHeadText("Item "),
                Padding(
                  padding: padding1,
                  child: Container(
                    height: 50, width: 343,
                    decoration: DecorationForms(),
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
                                  onChanged: onDataChange2,
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
                FormsHeadText("Request Qty. "),
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
                                  controller: ReqQty,
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
                    FormsHeadText("Rate"),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                    FormsHeadText("Amount:"),
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
                      color: StoreContainerColor,
                      child: RaisedButtonText("Clear This Item"),

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
                            textColor1: TextColor1,
                          );
                        }
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

          //============================================================ popup container

//=============================================================================
          const Padding(padding: EdgeInsets.all(10)),

          FormsHeadText("Choose Phase (Cost Center)"),
          Padding(
            padding: padding1,
            child: Container(
              height: 50, width: 343,
              decoration: DecorationForms(),
              child: FutureBuilder<List<ItemCostCenter>>(
                  future: dropdownBlocItemCostCenter.itemCostCenterData,
                  builder: (context, snapshot) {
                    return StreamBuilder<ItemCostCenter>(
                        stream: dropdownBlocItemCostCenter.selectedState,
                        builder: (context, item) {
                          return SearchChoices<ItemCostCenter>.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            underline: "",
                            padding: 1,
                            isExpanded: true,
                            hint: "Search here",
                            value: selectItemCostCenter,
                            displayClearIcon: false,
                            onChanged: onDataChange3,
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
          const SizedBox(height: 15),
          FormsHeadText("Req. Date"),
          Container(
            padding: dateFieldPadding,
            height: dateFieldHeight,
            child: Center(
              child: TextFormField(
                controller: ReqDateInput,
                decoration: dateFieldDecoration(),
                readOnly: true,
                onTap: () async {
                  DateTime pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101)
                  );
                  if (pickedDate != null) {
                    String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                    setState(() {
                      ReqDateInput.text = formattedDate;
                    });
                  } else {
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          FormsHeadText("Remarks"),
          Container(
            height: 50,
            padding: padding1,
            decoration: decoration1(),
            child: SizedBox(
              width: 320,
              child: StreamBuilder<String>(
                stream: bloc.outtextField,
                builder: (context, snapshot) => TextFormField(
                  controller: Remarks,
                  onChanged: bloc.intextField,
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
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              child: RoundedButtonHome(
                  "Submit",
                      (){
                        //print(selectIndentName.strSubCode);
                        //print(selectIndentName.strName);
                        //print(IntendDateInput.text);
                        //print(selectItemCurrentStatus.strItemName);
                        //print(selectItemCurrentStatus.dblQty);
                       // print(selectItemCurrentStatus.strUnit);
                        //print(_calculation.call());
                        //check();
                        //print(ReqQty.text);
                        //print(rate.text);
                        //print(selectItemCostCenter.strSubCode);
                        //print(ReqDateInput.text);
                        //print(Remarks.text);
                        //sendData();
                  })
          ),
        ],
      ),
    );
  }
  check(){
    if(selectItemCurrentStatus.strItemName!=null){
      print("yes");
      print(selectItemCurrentStatus.dblQty);
    }
    else{
      print("no");
    }
  }
}