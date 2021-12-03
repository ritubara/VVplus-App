import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/StrRecord_model.dart';
import 'dart:async';

import 'package:vvplus_app/infrastructure/Repository/indentor_name_repository.dart';

class DropdownBloc {
  final _repository = IndentorNameRepository();
  final _selectedData$ = BehaviorSubject<StrRecord>();

  Future<List<StrRecord>> data;
  Stream<StrRecord> get selectedState => _selectedData$;
  void selectedStateEvent(StrRecord state) => _selectedData$.add(state);

  DropdownBloc() {
    data = _repository.getData();
  }

  void dispose() {
    _selectedData$.close();
  }
}