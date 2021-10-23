import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

class BottomNavBarStaff extends StatefulWidget {
  const BottomNavBarStaff({Key key}) : super(key: key);

  @override
  State<BottomNavBarStaff> createState() => _MyBottomNavbarStaff();
}
class _MyBottomNavbarStaff extends State<BottomNavBarStaff>{
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      //NavigationBar
      backgroundColor: PrimaryColor1,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      elevation: 10,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home,color: PrimaryColor3,),
            activeIcon: Icon(Icons.home,color: PrimaryColor5,),
            title: Text('', style: TextStyle(color: PrimaryColor2))),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: PrimaryColor3,),
            activeIcon: Icon(Icons.notifications,color: PrimaryColor5,),
            title: Text('', style: TextStyle(color: PrimaryColor2))),
        BottomNavigationBarItem(
            icon: Icon(Icons.check,size: 30,color: PrimaryColor3,),
            activeIcon: Icon(Icons.check,size:30,color: PrimaryColor5,),
            title: Text('', style: TextStyle(color: PrimaryColor2))),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: PrimaryColor3,),
            activeIcon: Icon(Icons.account_circle,color: PrimaryColor5,),
            title: Text('', style: TextStyle(color: PrimaryColor2))),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}



