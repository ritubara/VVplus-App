import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/home%20page/staff_homepage_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/material_request_approval/material_request_approval_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/place%20purchase%20order/place_purchase_order_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/purchase_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class PlacePurchaseOrder extends StatefulWidget{
  @override
  _PlacePurchaseOrderState createState() => _PlacePurchaseOrderState();
}

class _PlacePurchaseOrderState extends State<PlacePurchaseOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Place Purchase Order"),
      body: PlacePurchaseOrderBody(),
      bottomNavigationBar: BottomNavBarStaff(),
    );
  }
}

