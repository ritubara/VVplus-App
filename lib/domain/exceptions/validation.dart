
String validateMobile(String value) {
  String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = RegExp(patttern);
  if (value.isEmpty) {
    return 'Please enter mobile number';
  }
  else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}

String validateName(String value) {
  if (value.length < 3) {
    return 'Name must be more than 2 charater';
  } else {
    return null;
  }
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Enter Valid Email';
  } else {
    return null;
  }
}

String validateOTP(String value) {

if(value.isEmpty) {
  return 'Please Enter Minimum 4 characters';
} else if (value.length < 4) {
  return 'OTP must be more than 3 charater';
} else {
  return null;
}
}