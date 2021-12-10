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
    this.Godown,
    this.Purchase_order_select,
    this.Supplier,
  });

  String strSubCode;
  String strName;
  String Godown;
  String Purchase_order_select;
  String Supplier;

  factory StrRecord.fromJson(Map<String, dynamic> json) => StrRecord(
    strSubCode: json["StrSubCode"],
    strName: json["StrName"],
    Godown: json["Godown"],
    Purchase_order_select: json["Purchase_order_select"],
    Supplier: json["Supplier"],
  );

  Map<String, dynamic> toJson() => {
    "StrSubCode": strSubCode,
    "StrName": strName,
    "Godown": Godown,
    "Purchase_order_select": Purchase_order_select,
    "Supplier": Supplier,
  };
}
