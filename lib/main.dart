import 'package:flutter/material.dart';
import 'package:vvplus_app/Application/Bloc/Login_Bloc/login_provider.dart';
import 'package:vvplus_app/ui/pages/Login%20page/login_page.dart';
import 'package:vvplus_app/ui/widgets/constants/colors.dart';

void main()  async{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'VVPlus App',
        theme: ThemeData(
            primaryColor: PrimaryColor1,
            scaffoldBackgroundColor: PrimaryColor3),
        home: const LoginPage(),
      ),
    );
  }
}
/*
import "package:flutter/material.dart";
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class getData {
  String strFilter;
  String strSiteCode;
  String strVType;
  String strChkNonStockable;
  String strItemCode;
  String strCostCenterCode;
  String strAllCostCenter;
  List<StrUPCostCenter> strUPCostCenter;

  getData(
      {this.strFilter,
        this.strSiteCode,
        this.strVType,
        this.strChkNonStockable,
        this.strItemCode,
        this.strCostCenterCode,
        this.strAllCostCenter,
        this.strUPCostCenter});

  getData.fromJson(Map<String, dynamic> json) {
    strFilter = json['StrFilter'];
    strSiteCode = json['StrSiteCode'];
    strVType = json['StrV_Type'];
    strChkNonStockable = json['StrChkNonStockable'];
    strItemCode = json['StrItemCode'];
    strCostCenterCode = json['StrCostCenterCode'];
    strAllCostCenter = json['StrAllCostCenter'];
    if (json['StrUPCostCenter'] != null) {
      strUPCostCenter = new List<StrUPCostCenter>();
      json['StrUPCostCenter'].forEach((v) {
        strUPCostCenter.add(new StrUPCostCenter.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StrFilter'] = this.strFilter;
    data['StrSiteCode'] = this.strSiteCode;
    data['StrV_Type'] = this.strVType;
    data['StrChkNonStockable'] = this.strChkNonStockable;
    data['StrItemCode'] = this.strItemCode;
    data['StrCostCenterCode'] = this.strCostCenterCode;
    data['StrAllCostCenter'] = this.strAllCostCenter;
    if (this.strUPCostCenter != null) {
      data['StrUPCostCenter'] =
          this.strUPCostCenter.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StrUPCostCenter {
  String strCostCenterCode;

  StrUPCostCenter({this.strCostCenterCode});

  StrUPCostCenter.fromJson(Map<String, dynamic> json) {
    strCostCenterCode = json['StrCostCenterCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StrCostCenterCode'] = this.strCostCenterCode;
    return data;
  }
}

void main() => runApp(MaterialApp(
  title: "Hospital Management",
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List data = List(); //edited line

  Future<String> getSWData() async {
    String _mySelection;
    var xml = '<?xml version="1.0" encoding="UTF-8"?>...';
    final String url = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Indentor","StrSiteCode":"AS","StrV_Type":"IND","StrChkNonStockabl// e":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostC// enterCode":""},{"StrCostCenterCode":""}]}'}";

    var res = await http.get(Uri.parse(url));
    var resBody = json.decode(res.body);

    setState(() {
      data = resBody;
    });

    print(resBody);

    return "Sucess";
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: new Center(
        child: new Container(
          child: Text(),
          /*items: data.map((item) {
            return new DropdownMenuItem(
              child: new Text(item['StrName']),
              value: item['StrSubCode'].toString(),
            );
          }).toList(),
          onChanged: (newVal) {
            setState(() {
              _mySelection = newVal;
            });
          },
          value: _mySelection,*/
        ),
      ),
    );
  }
}
*/

/*
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<getData> fetchAlbum() async {
  final response = await http
      .get(Uri.parse("http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Indentor","StrSiteCode":"AS","StrV_Type":"IND","StrChkNonStockabl// e":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostC// enterCode":""},{"StrCostCenterCode":""}]}'}"));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return getData.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class getData {
  String strFilter;
  String strSiteCode;
  String strVType;
  String strChkNonStockable;
  String strItemCode;
  String strCostCenterCode;
  String strAllCostCenter;
  List<StrUPCostCenter> strUPCostCenter;

  getData(
      {this.strFilter,
        this.strSiteCode,
        this.strVType,
        this.strChkNonStockable,
        this.strItemCode,
        this.strCostCenterCode,
        this.strAllCostCenter,
        this.strUPCostCenter});

  getData.fromJson(Map<String, dynamic> json) {
    strFilter = json['StrFilter'];
    strSiteCode = json['StrSiteCode'];
    strVType = json['StrV_Type'];
    strChkNonStockable = json['StrChkNonStockable'];
    strItemCode = json['StrItemCode'];
    strCostCenterCode = json['StrCostCenterCode'];
    strAllCostCenter = json['StrAllCostCenter'];
    if (json['StrUPCostCenter'] != null) {
      strUPCostCenter = new List<StrUPCostCenter>();
      json['StrUPCostCenter'].forEach((v) {
        strUPCostCenter.add(new StrUPCostCenter.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StrFilter'] = this.strFilter;
    data['StrSiteCode'] = this.strSiteCode;
    data['StrV_Type'] = this.strVType;
    data['StrChkNonStockable'] = this.strChkNonStockable;
    data['StrItemCode'] = this.strItemCode;
    data['StrCostCenterCode'] = this.strCostCenterCode;
    data['StrAllCostCenter'] = this.strAllCostCenter;
    if (this.strUPCostCenter != null) {
      data['StrUPCostCenter'] =
          this.strUPCostCenter.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StrUPCostCenter {
  String strCostCenterCode;

  StrUPCostCenter({this.strCostCenterCode});

  StrUPCostCenter.fromJson(Map<String, dynamic> json) {
    strCostCenterCode = json['StrCostCenterCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StrCostCenterCode'] = this.strCostCenterCode;
    return data;
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   Future<getData> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<getData>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.strFilter);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}*/
