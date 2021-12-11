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
    this.Godown,
    this.Purchase_order_select,
    this.Supplier,
  });

  String strSubCode;
  String strName;
  String Godown;
  String Purchase_order_select;
  String Supplier;

  factory VoucherType.fromJson(Map<String, dynamic> json) => VoucherType(
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
