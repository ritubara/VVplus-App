import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/stock%20issue%20entry/stock_issue_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class StockIssueEntryPage extends StatefulWidget{
  @override
  _StockIssueEntryPageState createState() => _StockIssueEntryPageState();
}

class _StockIssueEntryPageState extends State<StockIssueEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Stock Issue Entry"),
      body: const StockIssueEntryBody(),
      bottomNavigationBar: const BottomNavBarStaff(),
    );
  }
}

