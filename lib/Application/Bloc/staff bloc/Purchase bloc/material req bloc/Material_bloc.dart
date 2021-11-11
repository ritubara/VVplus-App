import 'dart:async';
import 'package:rxdart/rxdart.dart';

class MaterialBloc{
  // Declare streams
  final _requestQty = BehaviorSubject<String>();
  final _ratefield = BehaviorSubject<String>();

  Stream<double> get requestQty =>  _requestQty.stream.transform(validateRequestQty);
  Stream<double> get ratefield =>  _ratefield.stream.transform(validateRateField);
  //Stream<bool> get MaterialValid => Observable.combineLatest2(requestQty,_ratefield,(requestQty,_ratefield)=>true);

  // set Data
  Function(String) get changerequestQty => _requestQty.sink.add;
  Function(String) get changeratefield => _ratefield.sink.add;

  dispose(){
    _requestQty.close();
    _ratefield.close();
  }

  //Transformers
  final validateRequestQty = StreamTransformer<String,double>.fromHandlers(
      handleData: (requestQty, sink){
        try{
          sink.add(double.parse(requestQty));
        }catch(error){
          sink.addError('Enter a valid Quantity');
        }
      }
  );

  final validateRateField = StreamTransformer<String,double>.fromHandlers(
      handleData: (ratefield, sink){
        try{
          sink.add(double.parse(ratefield));
        }catch(error){
          sink.addError('Enter a valid Rate');
        }
      }
  );

  //Functiions
  submitProduct(){
    print('Product Submitted Name: ${_requestQty.value} and Price: ${_ratefield.value}');
  }
}