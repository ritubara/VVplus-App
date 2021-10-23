import 'package:flutter/material.dart';

class TextForm extends StatelessWidget{
  final String text;

  const TextForm({
    Key key,
    this.text,
}): super(key:key);
  @override
  Widget build(BuildContext context) {
   return Text(
     text,
       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
   );
  }

}
