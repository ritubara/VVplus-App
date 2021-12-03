import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/StrRecord_model.dart';
import 'package:vvplus_app/infrastructure/Repository/department_name_repository.dart';
import 'dart:async';

class DepartmentNameDropdownBloc {
  final _repository = DepartmentNameRepository();
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