import 'package:flutter/material.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/Dropdown_Bloc/item_current_status_dropdown_bloc.dart';
import 'package:vvplus_app/infrastructure/Models/StrRecord_model.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class ItemCurrentStatusDropdown extends StatefulWidget {
  ItemCurrentStatusDropdown({Key key}) : super(key: key);

  @override
  _ItemCurrentStatusDropdownState createState() => _ItemCurrentStatusDropdownState();
}

class _ItemCurrentStatusDropdownState extends State<ItemCurrentStatusDropdown> {
  ItemCurrentStatusDropdownBloc _dropdownBloc;

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
                      icon: Icon(Icons.keyboard_arrow_down_sharp),
                      underline: "",
                      padding: 1,
                      isExpanded: true,
                      hint: "Search here",
                      value: item.data,
                      onChanged: _dropdownBloc.selectedStateEvent,
                      items: snapshot?.data
                          ?.map<DropdownMenuItem<StrRecord>>((e) {
                        return DropdownMenuItem<StrRecord>(
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
    );
  }
}
