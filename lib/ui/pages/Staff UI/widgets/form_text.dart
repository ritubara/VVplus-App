import 'package:flutter/material.dart';
import 'package:vvplus_app/ui/widgets/Utilities/raisedbutton_text.dart';

Padding FormsHeadText(String text){
  return Padding(
    padding:const EdgeInsets.symmetric(horizontal:40),
    child: Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
    ),
  );
}

Padding ClearButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RaisedButton(
          onPressed: () {},
          elevation: 0.0,
          color: Colors.white,
          child: RaisedButtonText("Clear all"),
        ),
      ],
    ),
  );
}