import 'dart:async';

mixin TextValidators{

  var textFieldValidator = StreamTransformer<String, String>.fromHandlers(

      handleData: (textField, sink) {
        bool phoneValid = RegExp(r'^[a-zA-Z0-9._]+$').hasMatch(textField);
        if (phoneValid) {
          sink.add(textField);
        }
        else {
          sink.addError("Field is not valid");
        }
      }
  );
}