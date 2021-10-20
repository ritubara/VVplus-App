import 'package:flutter/material.dart';
import 'package:vvplus_app/constants/colors.dart';
import 'package:vvplus_app/constants/text_feild.dart';
import 'package:vvplus_app/widgets/text_style_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';

InputDecoration textFieldDecoration(String hintText,double borderRadiusValue) {
  return InputDecoration(
    fillColor: PrimaryColor3,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: PrimaryColor2),
        borderRadius: BorderRadius.circular(borderRadiusValue)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: PrimaryColor2),
        borderRadius: BorderRadius.circular(borderRadiusValue)),
    prefix: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
    ),
    hintText: hintText,
    hintStyle: const TextStyle(
      color: PrimaryColor4,
    ),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return textFieldDecoration(hintText,10);
}
InputDecoration textFieldInputDecoration2(String hintText) {
  return textFieldDecoration(hintText,5);
}

InputDecoration textFieldInputDecorationWithCountryCode(){
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 2),
    prefixIcon: CountryCodePicker(
      initialSelection: '+91',
      favorite: ['+91', 'IN'],
      textStyle: TextStyle(color: TextColor4),
      showFlag: true,
    ),

    labelText: "Enter Mobile Number",
    focusColor: TextColor4,
    labelStyle: TextStyle(fontSize: 14.0, color: TextColor4),
    enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: TextColor4)
    ),
    focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: const BorderSide(color: TextColor4)
    ), //floatingLabelBehavior: FloatingLabelBehavior.never,
    prefix: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
    ),
    hintText: "Enter OTP",
    hintStyle: const TextStyle(
      color: PrimaryColor2,
    ),
  );
}


class OTPInputDecoration extends StatefulWidget{
  @override
  _OTPInputDecorationState createState() => _OTPInputDecorationState();

}

class _OTPInputDecorationState extends State<OTPInputDecoration> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return TextFormField(
      obscureText: _obscureText,
      keyboardType: TextInputType.number,
      style: simpleTextStyle5(),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child:
          Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        ),
        labelText: "Enter OTP",
        labelStyle: const TextStyle(
          color: PrimaryColor4,
        ),
        hintText: hintText2,
        hintStyle: const TextStyle(
          color: PrimaryColor4,
        ),
        fillColor: PrimaryColor3,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: PrimaryColor2),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: PrimaryColor2),
            borderRadius: BorderRadius.circular(10)),
        prefix: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
        ),

      ),
    );
  }
}

BoxDecoration decoration1() {
  return BoxDecoration(
    color: PrimaryColor3,
    borderRadius: BorderRadius.circular(12),
  );
}

BoxDecoration decoration2(){                                                       //Boxdecoration for containers
  return BoxDecoration(borderRadius: BorderRadius.circular(5.0),
    color: PrimaryColor3,
    boxShadow: const [
      BoxShadow(
        color: PrimaryColor5,
        offset: Offset(0.0, 1.0), //(x,y)
        blurRadius: 6.0,
      ),
    ],
  );
}

BoxDecoration decoration3() {
  return BoxDecoration(
    color: PrimaryColor3,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: PrimaryColor2,width: 1),
  );
}

BoxDecoration decoration4(var colorof){                                                       //Boxdecoration for containers
  return BoxDecoration(
      border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(50.0),
    color: colorof,
    boxShadow: [
      BoxShadow(
        color: PrimaryColor5,
        offset: Offset(0.0, 1.0), //(x,y)
        blurRadius: 6.0,
      ),
    ],
  );
}
