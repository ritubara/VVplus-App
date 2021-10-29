import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/goods%20recepit%20entry/goods_recepit_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class GoodsRecepitEntryPage extends StatefulWidget{
  const GoodsRecepitEntryPage({Key key}) : super(key: key);

  @override
  _GoodsRecepitEntryPageState createState() => _GoodsRecepitEntryPageState();
}

class _GoodsRecepitEntryPageState extends State<GoodsRecepitEntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Goods Recepit Entry"),
      body: const GoodsRecepitEntryBody(),
      bottomNavigationBar: const BottomNavBarStaff(),
    );
  }
}

