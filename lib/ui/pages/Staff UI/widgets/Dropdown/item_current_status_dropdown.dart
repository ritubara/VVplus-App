import 'package:flutter/material.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_current_status_dropdown_bloc.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/infrastructure/Models/item_current_status_model.dart';
import 'package:vvplus_app/infrastructure/Repository/item_current_status_repository.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/form_text.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/Utilities/rounded_button.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ItemCurrentStatusDropdown extends StatefulWidget {
  const ItemCurrentStatusDropdown({Key key}) : super(key: key);

  @override
  _ItemCurrentStatusDropdownState createState() => _ItemCurrentStatusDropdownState();
}

class _ItemCurrentStatusDropdownState extends State<ItemCurrentStatusDropdown> {
  ItemCurrentStatusDropdownBloc _dropdownBloc;
  String selectedValue;

  @override
  void initState() {
    _dropdownBloc = ItemCurrentStatusDropdownBloc();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding1,
      child: Container(
        height: 50, width: 343,
        decoration: DecorationForms(),
        child: FutureBuilder<List<StrRecord>>(
            future: _dropdownBloc.data,
            builder: (context, snapshot) {
              return StreamBuilder<StrRecord>(
                  stream: _dropdownBloc.selectedState,
                  builder: (context, item) {
                    return SearchChoices<StrRecord>.single(
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      underline: "",
                      padding: 1,
                      isExpanded: true,
                      hint: "Search here",
                      value: item.data,
                      displayClearIcon: false,
                      items: snapshot?.data
                          ?.map<DropdownMenuItem<StrRecord>>((e) {
                        return DropdownMenuItem<StrRecord>(
                          value: e,
                          child: Text(e.strItemName),
                        );
                      })?.toList() ??[],
                      onChanged: (value){
                        setState(() {
                          selectedValue= value;
                        });
                        print(selectedValue);
                      },
                    );
                  }
              );
            }
        ),
      ),
    );
  }
}


class FormsContainerSearchDropDown extends StatefulWidget {
  const FormsContainerSearchDropDown({Key key}) : super(key: key);

  @override
  State<FormsContainerSearchDropDown> createState() => MyFormsContainerSearchDropDown();
}

class MyFormsContainerSearchDropDown extends State<FormsContainerSearchDropDown> {
  //=======================================================
  ItemCurrentStatusDropdownBloc _dropdownBloc;
  String selectedValue;

  @override
  void initState() {
    _dropdownBloc = ItemCurrentStatusDropdownBloc();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  //=======================================================

  List categoryItemList = List();
  TextEditingController ReqQty = TextEditingController();
  TextEditingController rate = TextEditingController();

  //final GlobalKey<FormState> _formKey = GlobalKey();
  int valueChoose = 4;

  @override
  Widget build(BuildContext context) {
    final bloc = MaterialProvider.of(context);
    return Padding(
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
            //================================================================== Dropdown
        Padding(
          padding: padding1,
          child: Container(
            height: 50, width: 343,
            decoration: DecorationForms(),
            child: FutureBuilder<List<StrRecord>>(
                future: _dropdownBloc.data,
                builder: (context, snapshot) {
                  return StreamBuilder<StrRecord>(
                      stream: _dropdownBloc.selectedState,
                      builder: (context, item) {
                        return SearchChoices<StrRecord>.single(
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          underline: "",
                          padding: 1,
                          isExpanded: true,
                          hint: "Search here",
                          value: item.data,
                          onChanged: (value){
                            setState(() {
                              selectedValue= value;
                            });
                            print(selectedValue);
                          },
                          items: snapshot?.data
                              ?.map<DropdownMenuItem<StrRecord>>((e) {
                            return DropdownMenuItem<StrRecord>(
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
            //==================================================================
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Row(
              children:[
            FormsHeadText("Request Qty. "),
                const SizedBox(width: 20),
                FormsHeadText("Unit"),
            ],
            ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child:selectedValue != null? Container(
                    height: 50,
                    padding: padding1,
                    decoration: decoration1(),
                    child: SizedBox(
                      width: 130,
                      child: FutureBuilder(
                        future: _dropdownBloc.data,
                        builder: (context,snapshot){
                          if(snapshot.hasData){
                            return ListView.builder(
                              itemBuilder: (context,index){
                                var list = snapshot.data[index];
                                return ListTile(title:Text(list['dblQty']),);
                              }
                            );
                          }
                          return Text("No data Found");
                        }
                      ),
                    ),
                  ):Text("No data"),
                ),
                SizedBox(width: 100 ),
                selectedValue != null? Container(
                  height: 50,
                  padding: padding1,
                  decoration: decoration1(),
                  child: SizedBox(
                    width: 130,
                    child: FutureBuilder(
                        future: _dropdownBloc.data,
                        builder: (context,snapshot){
                          if(snapshot.hasData){
                            return ListView.builder(
                                itemBuilder: (context,index){
                                  var list = snapshot.data[index];
                                  return ListTile(title:Text(list['strUnit']),);
                                }
                            );
                          }
                          return Text("No data Found");
                        }
                    ),
                  ),
                ):Text("No data"),
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
    );
  }

}


BoxDecoration DecorationFormsCont() {
  return BoxDecoration(
    color: PrimaryColor3,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: PrimaryColor9, width: 1),

  );
}

