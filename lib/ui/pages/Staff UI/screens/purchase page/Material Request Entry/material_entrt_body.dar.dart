import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/screens/NewComplaint%20page/drop_down_menu_items.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/decoration_widget.dart';
import 'package:vvplus_app/ui/pages/Customer%20UI/widgets/text_style_widget.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_decorations.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/text_form_field.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';
import 'package:vvplus_app/ui/widgets/constants/size.dart';
class MaterialEntryBody extends StatefulWidget{
  @override
  State<MaterialEntryBody> createState() =>myMaterialEntryBody();
  }


class myMaterialEntryBody extends State<MaterialEntryBody>{

  @override
  Widget build(BuildContext context) {
return SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            RaisedButton(
              onPressed: (){},
              elevation: 0.0,
            color: Colors.white,
              child: RaisedButtonText("Clear all"),
            ),
    ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Text(
          "Indent Type",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      DropdownForm(),



    ],
  ),
);


  }

}