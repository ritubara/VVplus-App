import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/StrRecord_model.dart';
import 'dart:async';

import 'package:vvplus_app/infrastructure/Repository/item_current_status_repository.dart';

class ItemCurrentStatusDropdownBloc {
  final _repository = ItemCurrentStatusRepository();
  final _selectedData$ = BehaviorSubject<StrRecord>();

  Future<List<StrRecord>> data;
  Stream<StrRecord> get selectedState => _selectedData$;
  void selectedStateEvent(StrRecord state) => _selectedData$.add(state);

  ItemCurrentStatusDropdownBloc() {
    data = _repository.getData();
  }

  void dispose() {
    _selectedData$.close();
  }
}