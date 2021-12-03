/*
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vvplus_app/data_source/api/api_details.dart';
import 'package:vvplus_app/infrastructure/Models/StrRecord_model.dart';

class ApiService {

  Future getResponse() async {
    final response = await http.get(Uri.parse(URL));
    print('URL: $URL \n status: ${response.statusCode}');
    print('Response: $response');
    return response.statusCode == 200 ? jsonDecode(response.body) : null;
  }
}

Future<StrRecord> fetchData() async {
  final response = await http
      .get(Uri.parse(''));

  if (response.statusCode == 200) {
    return StrRecord.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}

 */