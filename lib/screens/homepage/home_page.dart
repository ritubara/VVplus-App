import 'package:flutter/material.dart';
import 'package:vvplus_app/screens/homepage/body.dart';
import 'package:vvplus_app/utilities/bottom_navbar.dart';

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
      bottomNavigationBar: BottomNavBar()
    );
  }
}
