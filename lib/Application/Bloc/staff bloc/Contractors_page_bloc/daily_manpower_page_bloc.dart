// ignore_for_file: avoid_renaming_method_parameters

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/domain/value_objects/Validators/text_field_validators.dart';

class DailyManPowerBloc{
  // Declare streams
  final _dropDownField1 = BehaviorSubject<String>.seeded("Item list 1");
  final _dropDownField2 = BehaviorSubject<String>.seeded("Item list 1");
  final _dropDownField3 = BehaviorSubject<String>.seeded("Item list 1");
  final _textController = BehaviorSubject<String>();
  final _textController1 = BehaviorSubject<String>();

  // set Data

  Function(String) get inDropField1 => _dropDownField1.sink.add;
  Function(String) get inDropField2 => _dropDownField2.sink.add;
  Function(String) get inDropField3 => _dropDownField3.sink.add;
  Function(String) get intextField1 => _textController.sink.add;
  Function(String) get intextField2 => _textController1.sink.add;

  Stream<String> get outDropField1  => _dropDownField1.stream;
  Stream<String> get outDropField2  => _dropDownField2.stream;
  Stream<String> get outDropField3  => _dropDownField3.stream;
  Stream<String> get outtextField1 => _textController.stream.transform(textFieldValidator);
  Stream<String> get outtextField2 => _textController1.stream.transform(textFieldValidator);


  List<String> names = [
    "Item list 1",
    "Item list 2",
    "Item list 3",
    "Item list4"
  ];

  dispose(){
    _dropDownField1.close();
    _dropDownField2.close();
    _dropDownField3.close();
    _textController.close();
    _textController1.close();
  }

  //Functiions
  submitProduct(){
    //print('Product Submitted Name: ${_textController.value}');
  }
}



class ContractorProvider extends InheritedWidget{
  final DailyManPowerBloc bloc;

  ContractorProvider({Key key, Widget child})
      :bloc = DailyManPowerBloc(),
        super(key : key, child : child);

  @override
  bool updateShouldNotify(_) => true;

  static DailyManPowerBloc of (BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<ContractorProvider>()).bloc;
  }

}