/*
import 'package:rxdart/rxdart.dart';
import 'dart:async';

import 'package:vvplus_app/infrastructure/other%20data/repository.dart';
import 'package:vvplus_app/infrastructure/other%20data/state_model.dart';

class DropdownBloc {
  final _repository = Repository();
  final _selectedState$ = BehaviorSubject<StateModel>();
  final _selectedCity$ = BehaviorSubject<City>();

  Future<List<StateModel>> states;
  Stream<List<City>> cities;
  Stream<StateModel> get selectedState => _selectedState$;
  Stream<City> get selectedCity => _selectedCity$;
  void selectedStateEvent(StateModel state) => _selectedState$.add(state);
  void selectedCityEvent(City city) => _selectedCity$.add(city);

  DropdownBloc() {
    states = _repository.getStates();
    cities = _selectedState$.switchMap((d) =>
        Stream.fromFuture(_repository.getCities(d.id)).startWith(null))
      ..listen((e) => _selectedCity$.add(null));
  }

  void dispose() {
    _selectedCity$.close();
    _selectedState$.close();
  }
}

 */