import 'package:rxdart/rxdart.dart';
import 'package:vvplus_app/domain/value_objects/Validators/text_field_validators.dart';

class TextFieldBloc extends Object with TextValidators implements BaseBloc {
  final _textFieldController = BehaviorSubject<String>();
  //final _otpController = BehaviorSubject<String>();

  Function(String) get textFieldChanged => _textFieldController.sink.add;
  //Function(String) get passwordChanged => _otpController.sink.add;

  Stream<String> get textField=> _textFieldController.stream.transform(textFieldValidator);
  //Stream<String> get otp => _otpController.stream.transform(otpValidator);
/*
  Stream<bool> get submitCheck =>
      Rx.combineLatest2(phone, otp, (p, o) => true);

 */

  submit() {
  }

  @override
  void dispose() {
    _textFieldController?.close();
    //_otpController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}