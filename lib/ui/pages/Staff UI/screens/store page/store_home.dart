import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/store%20page/store_home_page_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class StorePage extends StatefulWidget{
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Store"),
      body: StorePageBody(),
      bottomNavigationBar: BottomNavBarStaff(),
    );
  }
}

