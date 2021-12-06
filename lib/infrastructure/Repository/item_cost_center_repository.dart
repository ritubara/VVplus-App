import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:http/http.dart' as http;
import 'package:vvplus_app/data_source/api/api_details.dart';
import 'dart:async';

import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';


class ItemCostCenterRepository {
  Client client = Client();

  Future<List<StrRecord>> getData() async {
    try {
      final response = await client.get(Uri.parse(getItemCostCenterURL));
      final items = (jsonDecode(response.body) as List)
          .map((e) => StrRecord.fromJson(e))
          .toList();
      return items;
    } catch (e) {
      rethrow;
    }
  }
}
Future<List<StrRecord>> createUser(String strSubCode,String strName) async{
  final response = await http.post(Uri.parse(getItemCostCenterURL), body: {
    "StrSubCode": strSubCode,
    "StrName": strName,
  });

  if(response.statusCode == 200){
    final String responseString = response.body;
    return StrRecordFromJson(responseString);
  }else{
    return null;
  }
}