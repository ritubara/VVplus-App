import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:vvplus_app/infrastructure/Models/indentor_name_model.dart';
import 'dart:async';


class Repository {
  Client client = new Client();
  //String url = 'https://servicodados.ibge.gov.br/api/v1/localidades/estados';
  final String url = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Indentor","StrSiteCode":"AS","StrV_Type":"IND","StrChkNonStockabl// e":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostC// enterCode":""},{"StrCostCenterCode":""}]}'}";

  Future<List<StrRecord>> getStates() async {
    try {
      final response = await client.get(Uri.parse(url));
      final items = (jsonDecode(response.body) as List)
          .map((e) => StrRecord.fromJson(e))
          .toList();
      return items;
    } catch (e) {
      rethrow;
    }
  }
/*
  Future<List<StrIndGrid>> getCities(int id) async {
    try{
      final response = await client.get(Uri.parse("https://servicodados.ibge.gov.br/api/v1/localidades/estados/$id/municipios"));

      final items = (jsonDecode(response.body) as List).map<StrIndGrid>((d) => StrIndGrid.fromJson(d)).toList();
      return items;
    } catch(e){
      rethrow;
    }
  }

 */
}