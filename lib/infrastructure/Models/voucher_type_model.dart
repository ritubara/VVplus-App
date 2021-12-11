import 'dart:convert';

//StrRecord strRecordFromJson(String str) => StrRecord.fromJson(json.decode(str));
//String strRecordToJson(StrRecord data) => json.encode(data.toJson());

List<VoucherType> StrRecordFromJson(String str) =>
    List<VoucherType>.from(json.decode(str).map((x) => VoucherType.fromJson(x)));

String StrRecordToJson(List<VoucherType> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class VoucherType {
  VoucherType({
    this.strSubCode,
    this.strName,
  });

  String strSubCode;
  String strName;

  factory VoucherType.fromJson(Map<String, dynamic> json) => VoucherType(
    strSubCode: json["StrSubCode"],
    strName: json["StrName"],
  );

  Map<String, dynamic> toJson() => {
    "StrSubCode": strSubCode,
    "StrName": strName,
  };
}
