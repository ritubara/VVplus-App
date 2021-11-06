import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

class CustomTabBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 343,
        height: 53,
        color: PrimaryColor8,
        child: TabBar(
          tabs: [
            Tab(text: 'Receive',),
            Tab(text: 'Deposit'),
            Tab(text: 'Cleared'),
          ],
          labelPadding: EdgeInsets.symmetric(vertical: 4),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color:PrimaryColor8),
            color: PrimaryColor3,
          ),
          labelColor: PrimaryColor1,
          unselectedLabelColor: PrimaryColor9,
          labelStyle: TextStyle(fontSize:15,fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}

