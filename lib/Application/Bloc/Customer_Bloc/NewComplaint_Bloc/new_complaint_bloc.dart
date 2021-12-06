import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/domain/value_objects/Validators/text_field_validators.dart';

class NewComplaintPageBloc extends Object with TextValidators implements BaseBloc {
  final _textFieldController = BehaviorSubject<String>();
  final _dropDownField1 = BehaviorSubject<String>.seeded("");

  Function(String) get textFieldChanged => _textFieldController.sink.add;
  Function(String) get inDropField1 => _dropDownField1.sink.add;

  Stream<String> get textField=> _textFieldController.stream.transform(textFieldValidator);
  Stream<String> get outDropField1  => _dropDownField1.stream;

  List<String> names = [
    "Item list 1",
    "Item list 2",
    "Item list 3",
    "Item list4"
  ];

  submit() {
  }

  @override
  void dispose() {
    _textFieldController?.close();
    _dropDownField1.close();
  }
}

abstract class BaseBloc {
  void dispose();
}

class NewComplaintPageProvider extends InheritedWidget{
  final NewComplaintPageBloc bloc;

  NewComplaintPageProvider({Key key, Widget child})
      :bloc = NewComplaintPageBloc(),
        super(key : key, child : child);

  @override
  bool updateShouldNotify(_) => true;

  static NewComplaintPageBloc of (BuildContext context){
    return (context.dependOnInheritedWidgetOfExactType<NewComplaintPageProvider>())
        .bloc;
  }

}