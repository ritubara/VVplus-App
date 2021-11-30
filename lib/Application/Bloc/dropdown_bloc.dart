import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'dart:async';
import 'package:vvplus_app/infrastructure/Repository/str_record_repository.dart';

class DropdownBloc {
  final _repository = Repository();
  final _selectedData$ = BehaviorSubject<StrRecord>();

  Future<List<StrRecord>> data;
  Stream<StrRecord> get selectedState => _selectedData$;
  void selectedStateEvent(StrRecord strIndTypeCode) => _selectedData$.add(strIndTypeCode);

  DropdownBloc() {
    data = _repository.getData();
  }

  void dispose() {
    _selectedData$.close();
  }
}