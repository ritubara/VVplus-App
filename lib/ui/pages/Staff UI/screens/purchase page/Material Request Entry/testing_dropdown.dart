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

class ItemCurrentStatusDropdown1 extends StatefulWidget {
  const ItemCurrentStatusDropdown1({Key key}) : super(key: key);

  @override
  _ItemCurrentStatusDropdown1State createState() => _ItemCurrentStatusDropdown1State();
}

class _ItemCurrentStatusDropdown1State extends State<ItemCurrentStatusDropdown1> {
 // ItemCurrentStatusDropdownBloc _dropdownBloc;
  String selectedValue;
  Future<List<ItemCurrentStatus>> myFuture;
  String selectedSpinnerItem;
  @override
  void initState() {
    myFuture = ItemCurrentStatusRepository().getData();
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
        child: FutureBuilder<List<ItemCurrentStatus>>(
            future: myFuture,
            builder: (context, snapshot) {
              return SearchChoices<ItemCurrentStatus>.single(
                      icon: const Icon(Icons.keyboard_arrow_down_sharp),
                      underline: "",
                      padding: 1,
                      isExpanded: true,
                      hint: "Search here",
                     // value: item.data,
                      //value: selectedSpinnerItem,
                      displayClearIcon: false,
                      items: snapshot?.data
                          ?.map<DropdownMenuItem<ItemCurrentStatus>>((e) {
                        return DropdownMenuItem<ItemCurrentStatus>(
                          value: e,
                          child: Text(e.strItemName),
                        );
                      })?.toList() ??[],
                onChanged: (newVal) {
                  setState(() {
                    selectedSpinnerItem = newVal;
                    print(selectedSpinnerItem);
                  });
                },
                    );
            }
        ),
      ),
    );
  }
}