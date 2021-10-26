import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/home%20page/staff_homepage_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/goods%20recepit%20entry/goods_recepit_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/material_request_approval/material_request_approval_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/place%20purchase%20order/place_purchase_order_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/purchase_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/Phase%20to%20Phase%20Transfer/phase_to_phase_transfer_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/stock%20issue%20entry/stock_issue_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/stock%20receive%20entry/stock_receive_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class PhaseToPhaseTransferPage extends StatefulWidget{
  @override
  _PhaseToPhaseTransferPageState createState() => _PhaseToPhaseTransferPageState();
}

class _PhaseToPhaseTransferPageState extends State<PhaseToPhaseTransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Phase to Phase Transfer"),
      body: const PhaseToPhaseTransferBody(),
      bottomNavigationBar: const BottomNavBarStaff(),
    );
  }
}

