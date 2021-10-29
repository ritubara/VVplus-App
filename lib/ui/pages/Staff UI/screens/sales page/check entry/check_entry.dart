import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/check%20entry/check_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class CheckEntry extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> MyCheckEntry();
}

class MyCheckEntry extends State<CheckEntry> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBarSatff("Cheque Entry/Update"),
     body: CheckEntryBody(),
     bottomNavigationBar: BottomNavBarStaff(),
   );
  }
}