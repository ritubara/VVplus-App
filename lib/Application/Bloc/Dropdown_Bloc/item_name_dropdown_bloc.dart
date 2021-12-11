import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/item_name_model.dart';
import 'dart:async';
import 'package:vvplus_app/infrastructure/Repository/item_name_repository.dart';

class ItemNameDropdownBloc {
  final _repository = ItemNameRepository();
  final _selectedData$ = BehaviorSubject<ItemName>();

  Future<List<ItemName>> data;
  Stream<ItemName> get selectedState => _selectedData$;
  void selectedStateEvent(ItemName state) => _selectedData$.add(state);

  ItemNameDropdownBloc() {
    data = _repository.getData();
  }

  void dispose() {
    _selectedData$.close();
  }
}