import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/StrRecord_model.dart';
import 'dart:async';
import 'package:vvplus_app/infrastructure/Repository/voucher_type_repository.dart';

class VoucherTypeDropdownBloc {
  final _repository = VoucherTypeRepository();
  final _selectedData$ = BehaviorSubject<StrRecord>();

  Future<List<StrRecord>> data;
  Stream<StrRecord> get selectedState => _selectedData$;
  void selectedStateEvent(StrRecord state) => _selectedData$.add(state);

  VoucherTypeDropdownBloc() {
    data = _repository.getData();
  }

  void dispose() {
    _selectedData$.close();
  }
}