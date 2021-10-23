import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/home%20page/staff_homepage_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/goods%20recepit%20entry/goods_recepit_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/material_request_approval/material_request_approval_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/place%20purchase%20order/place_purchase_order_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/purchase_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class GoodsRecepitEntryPage extends StatefulWidget{
  @override
  _GoodsRecepitEntryPageState createState() => _GoodsRecepitEntryPageState();
}

class _GoodsRecepitEntryPageState extends State<GoodsRecepitEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Goods Recepit Entry"),
      body: GoodsRecepitEntryBody(),
      bottomNavigationBar: BottomNavBarStaff(),
    );
  }
}

