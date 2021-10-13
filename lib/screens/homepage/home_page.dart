import 'package:flutter/material.dart';
import 'package:vvplus_app/components/colors.dart';
import 'package:vvplus_app/screens/homepage/body.dart';
import 'package:vvplus_app/main.dart';

class HomePage extends StatefulWidget{
  HomePage({
    Key key
  }): super(key:key);
  @override
  State<HomePage> createState()=>MyHomePage();
}

class MyHomePage extends State<HomePage> {
  int _selectedIndex=1;
  void _onItemTapped(int index){
    setState((){
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: PrimaryColor1,
        onTap: _onItemTapped,
      ),
    );
  }
}
