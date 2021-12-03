import 'dart:convert';

//StrRecord strRecordFromJson(String str) => StrRecord.fromJson(json.decode(str));
//String strRecordToJson(StrRecord data) => json.encode(data.toJson());

List<StrRecord> StrRecordFromJson(String str) =>
    List<StrRecord>.from(json.decode(str).map((x) => StrRecord.fromJson(x)));

String StrRecordToJson(List<StrRecord> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class StrRecord {
  StrRecord({
    this.strSubCode,
    this.strName,
  });

  String strSubCode;
  String strName;

  factory StrRecord.fromJson(Map<String, dynamic> json) => StrRecord(
    strSubCode: json["StrSubCode"],
    strName: json["StrName"],
  );

  Map<String, dynamic> toJson() => {
    "StrSubCode": strSubCode,
    "StrName": strName,
  };
}
