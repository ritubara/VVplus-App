import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'dart:async';
import 'package:vvplus_app/infrastructure/Repository/indentor_name_repository.dart';

class IndentorNameDropdownBloc {
  final _repository = IndentorNameRepository();
  final _selectedData$ = BehaviorSubject<IndentorName>();

  Future<List<IndentorName>> data;
  Stream<IndentorName> get selectedState => _selectedData$;
  void selectedStateEvent(IndentorName state) => _selectedData$.add(state);

  IndentorNameDropdownBloc() {
    data = _repository.getData();
  }

  void dispose() {
    _selectedData$.close();
  }
}