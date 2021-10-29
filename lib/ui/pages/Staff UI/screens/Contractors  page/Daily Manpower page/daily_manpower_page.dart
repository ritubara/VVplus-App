import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/Contractors%20%20page/Daily%20Manpower%20page/daily_manpower_page_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class DailyManpowerPage extends StatelessWidget{
  const DailyManpowerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Daily Manpower"),
      body: const DailyManpowerBody(),
      bottomNavigationBar: const BottomNavBarStaff(),
    );

  }

}