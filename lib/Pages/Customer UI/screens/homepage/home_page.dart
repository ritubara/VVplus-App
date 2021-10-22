import 'package:flutter/material.dart';
import 'package:vvplus_app/Pages/Customer%20UI/screens/homepage/body.dart';
import '../../widgets/bottom_navbar.dart';

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
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar()
    );
  }
}
