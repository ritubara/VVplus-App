import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/Bloc/staff%20bloc/Purchase%20bloc/material%20req%20bloc/Material_bloc.dart';
export 'package:vvplus_app/Application/Bloc/staff%20bloc/Purchase%20bloc/material%20req%20bloc/Material_bloc.dart';

class MaterialProvider extends InheritedWidget{
  final MaterialBloc bloc;

  MaterialProvider({Key key, Widget child})
      :bloc = MaterialBloc(),
        super(key : key, child : child);

  bool updateShouldNotify(_) => true;

  static MaterialBloc of (BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<MaterialProvider>() as MaterialProvider)
        .bloc;
  }

}