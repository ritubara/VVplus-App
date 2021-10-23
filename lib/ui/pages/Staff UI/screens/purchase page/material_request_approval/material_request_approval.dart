import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/home%20page/staff_homepage_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/material_request_approval/material_request_approval_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/purchase_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class MaterialRequestApproval extends StatefulWidget{
  @override
  _MaterialRequestApprovalState createState() => _MaterialRequestApprovalState();
}

class _MaterialRequestApprovalState extends State<MaterialRequestApproval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Material Req. Approval"),
      body: MaterialRequestApprovalBody(),
      bottomNavigationBar: BottomNavBarStaff(),
    );
  }
}

