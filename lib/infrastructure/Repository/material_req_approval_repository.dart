import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:http/http.dart' as http;
import 'package:vvplus_app/data_source/api/api_details.dart';
import 'dart:async';
import 'package:vvplus_app/infrastructure/Models/material_req_approval_model.dart';


class MaterialReqApprovalRepository {
  Client client = Client();

  Future<List<MaterialReqPost>> FetchPostData() async {
    try {
      final response = await client.get(Uri.parse(materialReqPostURL));
      final items = (jsonDecode(response.body) as List)
          .map((e) => MaterialReqPost.fromJson(e))
          .toList();
      return items;
    } catch (e) {
      rethrow;
    }
  }
}
Future<List<MaterialReqPost>> createUser(String IndentSubCode,String IntendDate,String ItemName,String ItemSubCode,String ItemUnit,String Rate,String Remarks,String ReqDate,String ReqQty) async {
  final response = await http.post(Uri.parse(materialReqPostURL), body: {
    "IndentSubCode": IndentSubCode,
    "IntendDate": IntendDate,
    "ItemName": ItemName,
    "ItemSubCode": ItemSubCode,
    "ItemUnit": ItemUnit,
    "Rate": Rate,
    "Remarks": Remarks,
    "ReqDate": ReqDate,
    "ReqQty": ReqQty,
  });

  if (response.statusCode == 200) {
    final String responseString = response.body;
    return StrRecordFromJson(responseString);
  } else {
    return null;
  }
}
