import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/Contractors%20%20page/contractors_home_page_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/sales_home_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class ContractorsPage extends StatefulWidget{
  @override
  _ContractorsPageState createState() => _ContractorsPageState();
}

class _ContractorsPageState extends State<ContractorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Contractors"),
      body: ContractorsBody(),
      bottomNavigationBar: BottomNavBarStaff(),
    );
  }
}

