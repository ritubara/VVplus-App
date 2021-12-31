// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:vvplus_app/data_source/api/api_services.dart';

class DailyManPowerPostData{

  Future<dynamic> sendData(String intendDate, String partyNameSubCode, String costCenterSubCode, String resourceTypeSubCode, String reqQty, String remarks) async{
    var responseJson;
    try {
      final response = await http.post(Uri.parse(ApiService.mockDataPostDailyManPowerURL),
          body: json.encode({
            "IntendDate": intendDate,
            "PartyNameSubCode": partyNameSubCode,
            "CostCenterSubCode": costCenterSubCode,
            "ResourceTypeSubCode": resourceTypeSubCode,
            "ReqQty": reqQty,
            "Remarks": remarks
          }));
      print("success");
      responseJson = _response(response);
    } on SocketException {
      print('No Internet connection');
    } on HttpException {
      print("Couldn't find the post");
    } on FormatException {
      print("Bad response format");
    }
    return responseJson;
  }
  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode: ${response.statusCode}');
    }
  }
}
class CustomException implements Exception {
  final _message;
  final _prefix;

  CustomException([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataException extends CustomException {
  FetchDataException([String message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends CustomException {
  InvalidInputException([String message]) : super(message, "Invalid Input: ");
}