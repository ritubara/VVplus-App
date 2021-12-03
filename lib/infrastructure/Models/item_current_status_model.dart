import 'dart:convert';

//StrRecord strRecordFromJson(String str) => StrRecord.fromJson(json.decode(str));

//String strRecordToJson(StrRecord data) => json.encode(data.toJson());

List<StrRecord> StrRecordFromJson(String str) =>
    List<StrRecord>.from(json.decode(str).map((x) => StrRecord.fromJson(x)));

String StrRecordToJson(List<StrRecord> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StrRecord {
  StrRecord({
    this.strItemName,
    this.strCostCenterName,
    this.dblQty,
    this.strUnit,
  });

  String strItemName;
  String strCostCenterName;
  double dblQty;
  String strUnit;

  factory StrRecord.fromJson(Map<String, dynamic> json) => StrRecord(
    strItemName: json["StrItemName"],
    strCostCenterName: json["StrCostCenterName"],
    dblQty: json["DblQty"].toDouble(),
    strUnit: json["StrUnit"],
  );

  Map<String, dynamic> toJson() => {
    "StrItemName": strItemName,
    "StrCostCenterName": strCostCenterName,
    "DblQty": dblQty,
    "StrUnit": strUnit,
  };
}
