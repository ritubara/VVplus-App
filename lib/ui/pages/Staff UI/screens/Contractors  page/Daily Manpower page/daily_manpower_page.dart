import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/Contractors%20%20page/Daily%20Manpower%20page/daily_manpower_page_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/Extra%20Work%20Entry/extra_work_entry_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/sales%20page/Unit%20Cancellation/unit_cancellation_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

class DailyManpowerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Daily Manpower"),
      body: DailyManpowerBody(),
      bottomNavigationBar: BottomNavBarStaff(),
    );

  }

}