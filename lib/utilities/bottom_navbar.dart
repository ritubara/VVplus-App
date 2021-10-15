import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      //NavigationBar
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      elevation: 10,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: PrimaryColor3,
            icon: Icon(Icons.circle, color: PrimaryColor5),
            title: Text('', style: TextStyle(color: PrimaryColor2))),
        BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: PrimaryColor5),
            title: Text('', style: TextStyle(color: PrimaryColor2))),
        BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: PrimaryColor5),
            title: Text('', style: TextStyle(color: Colors.black))),
        BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: PrimaryColor5),
            title: Text('', style: TextStyle(color: PrimaryColor2))),
      ],
    );
  }

}