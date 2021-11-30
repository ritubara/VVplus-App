import 'package:flutter/material.dart';
import 'package:search_choices/search_choices.dart';
import 'package:vvplus_app/Application/Bloc/dropdown_bloc.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_containers.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';

class MyHomePage11 extends StatefulWidget {
  MyHomePage11({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePage11State createState() => _MyHomePage11State();
}

class _MyHomePage11State extends State<MyHomePage11> {
  DropdownBloc _dropdownBloc;

  @override
  void initState() {
    _dropdownBloc = DropdownBloc();
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
                      })?.toList(),
                    );
                  }
              );
            }
        ),
      ),
    );
  }
}
