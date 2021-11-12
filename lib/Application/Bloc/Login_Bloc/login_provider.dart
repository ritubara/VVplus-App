import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/Bloc/Login_Bloc/login_bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType(aspect: Provider) as Provider).bloc;
  }
}