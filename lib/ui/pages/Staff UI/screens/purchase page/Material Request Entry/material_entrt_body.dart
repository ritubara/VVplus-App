import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_text_style.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/assets.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class MaterialEntryBody extends StatefulWidget {

  const MaterialEntryBody({Key key}) : super(key: key);
  @override
  State<MaterialEntryBody> createState() => myMaterialEntryBody();
}

class myMaterialEntryBody extends State<MaterialEntryBody> {

  //final Future<FetchData> post;
  //myMaterialEntryBody({Key key, this.post}) :super(key: key);

  TextEditingController dateinput = TextEditingController();
  TextEditingController indentType = TextEditingController();
  TextEditingController item = TextEditingController();
  TextEditingController ReqQty = TextEditingController();
  TextEditingController rate = TextEditingController();
  TextEditingController costCenter = TextEditingController();
  TextEditingController Remarks = TextEditingController();


  String dropdownValue = 'Choose an option';


  final GlobalKey<FormState> _formKey = GlobalKey();
  String Item = "";
  String Qty = "";
  String Rate="";

  void getDropDownItem(){
    setState(() {
      Item = dropdownValue ;
    });
  }

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  bool pressed = false;

  int valueChoose = 4;

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
                  onPressed: () {
                    dateinput.clear();
                    Remarks.clear();
                  },
                  elevation: 0.0,
                  color: Colors.white,
                  child: RaisedButtonText("Clear all"),
                ),
              ],
            ),
          ),
          FormsHeadText("Indent Type"),

          Padding(
            padding: paddingForms,
            child: SearchDropDown(),
          ),

          const Padding(padding: EdgeInsets.all(10)),

          FormsHeadText("Indent Date"),
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
                  }
                },
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),

          //const FormsContainer(),

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
                  ContainerSearchDropDown(),

                  //const DropdownFormCont(),
                  //==================================== dropdown form
             /* Padding(
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
              ),*/

                  //====================================


                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  FormsHeadText("Request Qty. "),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),

                        child: Container(
                          height: 50,
                          padding: padding1,
                          decoration: decoration1(),

                          child: SizedBox(
                            width: 130,

                            child: StreamBuilder<double>(
                                stream: bloc.requestQty,
                                builder: (context, snapshot) {
                                  return TextFormField(
                                    controller: ReqQty,
                                    decoration: InputDecoration(
                                      errorText: snapshot.error,
                                    ),
                                    onChanged: bloc.changerequestQty,
                                    keyboardType: TextInputType.number,
                                    style: simpleTextStyle7(),
                                    onFieldSubmitted: (value) {
                                      setState(() {
                                        Qty = value;
                                      });
                                    },
                                  );
                                }
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: const Text(" "),
                              dropdownColor: PrimaryColor3,
                              icon: const Icon(Icons.keyboard_arrow_down_sharp),
                              iconSize: 20,
                              isExpanded: true,
                              iconEnabledColor: PrimaryColor4,
                              style: const TextStyle(
                                  color: PrimaryColor2, fontSize: 12),
                              value: valueChoose,
                              items: const <DropdownMenuItem<int>>[
                                DropdownMenuItem(
                                  child: Text('\tTon'),
                                  value: 0,
                                ),
                                DropdownMenuItem(
                                  child: Text('\tKG'),
                                  value: 4,
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
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    children: [
                      FormsHeadText("Rate"),
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      FormsHeadText("Amount:"),
                    ],
                  ),
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),

                        child: Container(
                          height: 50,
                          padding: padding1,
                          decoration: decoration1(),

                          child: SizedBox(
                            width: 100,

                            child: StreamBuilder<double>(
                                stream: bloc.ratefield,
                                builder: (context, snapshot) {
                                  return TextFormField(
                                    controller: rate,
                                    decoration: InputDecoration(
                                      errorText: snapshot.error,
                                    ),
                                    onChanged: bloc.changeratefield,
                                    keyboardType: TextInputType.number,
                                    style: simpleTextStyle7(),
                                    onFieldSubmitted: (value) {
                                      setState(() {
                                        Rate = value;
                                      });
                                    },
                                  );
                                }
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      RaisedButton(
                        onPressed: () {
                          ReqQty.clear();
                          rate.clear();


                        },
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
                                setState(() {
                                  pressed = true;
                                });
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

          //============================================================

          pressed? Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.center,
              height: 85,
              width: 392,
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
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("",
                          //staff.item,
                          style: containerTextStyle1(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("HSN/SAC: 7307",
                          style: containerTextStyle9(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order Qty.:",
                                  style: containerTextStyle2(),
                                ),
                                Text(Qty ,
                                  //   staff.quantity,
                                  style: containerTextStyle2(),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Image.asset(icon15)),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children:[
                                Text(
                                  "Rate:",
                                  style: containerTextStyle2(),
                                ),
                                Text(Rate,
                                  //staff.rate,
                                  style: containerTextStyle2(),
                                ),
                                const SizedBox(
                                  width: 75,
                                ),
                                Text("Edit",
                                  style: containerTextStyle8(),
                                ),

                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children:[
                                Text(
                                  "Amount:",
                                  style: containerTextStyle2(),
                                ),
                                Text("",
                                  //staff.quantity*staff.rate,
                                  style: containerTextStyle2(),
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                Text(
                                  "Inc.Tax",
                                  style: containerTextStyle7(),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ) : SizedBox(),

          const Padding(padding: EdgeInsets.all(10)),
          
          //***************************************** api fetching
          /*Container(
            child: FutureBuilder<FetchData>(
              //future: post,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.strFilter);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner
                return CircularProgressIndicator();
              },
            ),
          ),*/
          //******************************************
          FormsHeadText("Choose Phase (Cost Center)"),
          Padding(
            padding: paddingForms,
            child: SearchDropDown(),
          ),
          const SizedBox(height: 15),
          FormsHeadText("Req. Date"),
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
                        //postData();


                      })
          ),
        ],
      ),
    );
  }
}