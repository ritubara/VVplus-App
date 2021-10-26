import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/stock%20receive%20entry/stock_receive_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class StockReceiveEntryPage extends StatefulWidget{
  @override
  _StockReceiveEntryPageState createState() => _StockReceiveEntryPageState();
}

class _StockReceiveEntryPageState extends State<StockReceiveEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Stock Receive Entry"),
      body: const StockReceiveEntryBody(),
      bottomNavigationBar: const BottomNavBarStaff(),
    );
  }
}

