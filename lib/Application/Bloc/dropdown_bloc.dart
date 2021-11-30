import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'dart:async';
import 'package:vvplus_app/infrastructure/Repository/str_record_repository.dart';

class DropdownBloc {
  final _repository = Repository();
  final _selectedState$ = BehaviorSubject<StrRecord>();
  //final _selectedCity$ = BehaviorSubject<StrIndGrid>();

  Future<List<StrRecord>> states;
  //Stream<List<StrIndGrid>> cities;
  Stream<StrRecord> get selectedState => _selectedState$;
  //Stream<StrIndGrid> get selectedCity => _selectedCity$;
  void selectedStateEvent(StrRecord strIndTypeCode) => _selectedState$.add(strIndTypeCode);
  //void selectedCityEvent(StrIndGrid strItemCode) => _selectedCity$.add(strItemCode);

  DropdownBloc() {
    states = _repository.getStates();
    //cities = _selectedState$.switchMap((d) =>
        //Stream.fromFuture(_repository.getCities(d.id)).startWith(null))
      //..listen((e) => _selectedCity$.add(null));
  }

  void dispose() {
    //_selectedCity$.close();
    _selectedState$.close();
  }
}