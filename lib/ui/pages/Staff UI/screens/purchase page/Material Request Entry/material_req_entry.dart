import 'package:flutter/material.dart';
import 'package:vvplus_app/domain/value_objects/staff%20bloc/Purchase%20bloc/material%20req%20bloc/material_provider.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';

import 'material_entrt_body.dar.dart';

class MaterialReqEntry extends StatelessWidget{
  const MaterialReqEntry({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return MaterialProvider(
   child:Scaffold(
   appBar: AppBarSatff("Material Request Entry"),
   body:   const MaterialEntryBody(),
   bottomNavigationBar: const BottomNavBarStaff(),
   ),
 );

  }

}