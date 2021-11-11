import 'dart:async';
import 'package:vvplus_app/domain/value_objects/validation.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators implements BaseBloc {
  final _phoneController = BehaviorSubject<String>();
  final _otpController = BehaviorSubject<String>();

  Function(String) get emailChanged => _phoneController.sink.add;
  Function(String) get passwordChanged => _otpController.sink.add;

  Stream<String> get phone => _phoneController.stream.transform(phoneValidator);
  Stream<String> get otp => _otpController.stream.transform(otpValidator);

  Stream<bool> get submitCheck =>
      Rx.combineLatest2(phone, otp, (p, o) => true);

  submit() {
    print("correct detail");
  }

  @override
  void dispose() {
    _phoneController?.close();
    _otpController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}