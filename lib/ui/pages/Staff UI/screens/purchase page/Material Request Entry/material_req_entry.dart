import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/Material%20Request%20Entry/material_entrt_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';



class MaterialReqEntry extends StatelessWidget{
  const MaterialReqEntry({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return MaterialProvider(
   child:Scaffold(
   appBar: appBarSatff("Material Request Entry"),
   body:   const MaterialEntryBody(),
   bottomNavigationBar: const BottomNavBarStaff(),
   ),
 );

  }

}


/*
import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/staff_provider.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/Material%20Request%20Entry/demo_material.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/screens/purchase%20page/Material%20Request%20Entry/material_entrt_body.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/appbar_staff.dart';
import 'package:vvplus_app/ui/pages/Staff%20UI/widgets/staff_bottomnavbar.dart';



class MaterialReqEntry extends StatelessWidget{
  const MaterialReqEntry({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSatff("Material Request Entry"),
      body: JsonSpinner(),
    );

  }

}

 */