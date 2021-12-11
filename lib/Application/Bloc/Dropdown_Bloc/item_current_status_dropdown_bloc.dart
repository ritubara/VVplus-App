import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/item_current_status_model.dart';
import 'dart:async';

import 'package:vvplus_app/infrastructure/Repository/item_current_status_repository.dart';

class ItemCurrentStatusDropdownBloc {
  final _repository = ItemCurrentStatusRepository();
  final _selectedData$ = BehaviorSubject<ItemCurrentStatus>();

  Future<List<ItemCurrentStatus>> data;
  Stream<ItemCurrentStatus> get selectedState => _selectedData$;
  void selectedStateEvent(ItemCurrentStatus state) => _selectedData$.add(state);

  ItemCurrentStatusDropdownBloc() {
    data = _repository.getData();
  }

  void dispose() {
    _selectedData$.close();
  }
}