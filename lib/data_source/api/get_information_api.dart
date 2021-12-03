/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vvplus_app/data_source/api/api_details.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    _getDataList();
    super.initState();
  }

  List dataList;
  //String _myState;

  Future<String> _getDataList() async {
    await http.get(Uri.parse(URL), headers: {
      'Content-Type': ''
    }).then((response) {
      var data = json.decode(response.body);

      setState(() {
        dataList = data['StrIndTypeCode'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

 */