import 'dart:convert';

//StrRecord strRecordFromJson(String str) => StrRecord.fromJson(json.decode(str));
//String strRecordToJson(StrRecord data) => json.encode(data.toJson());

List<MaterialReqPost> StrRecordFromJson(String str) =>
    List<MaterialReqPost>.from(json.decode(str).map((x) => MaterialReqPost.fromJson(x)));

String StrRecordToJson(List<MaterialReqPost> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class MaterialReqPost {
  String IndentSubCode;
  String IntendDate;
  String ItemName;
  String ItemSubCode;
  String ItemUnit;
  String Rate;
  String Remarks;
  String ReqDate;
  String ReqQty;

  MaterialReqPost({
    this.IndentSubCode,
    this.IntendDate,
    this.ItemName,
    this.ItemSubCode,
    this.ItemUnit,
    this.Rate,
    this.Remarks,
    this.ReqDate,
    this.ReqQty,
  });



  factory MaterialReqPost.fromJson(Map<String, dynamic> json) => MaterialReqPost(
    IndentSubCode: json["IndentSubCode"],
    IntendDate: json["IntendDate"],
    ItemName: json["ItemName"],
    ItemSubCode: json["ItemSubCode"],
    ItemUnit: json["ItemUnit"],
    Rate: json["Rate"],
    Remarks: json["Remarks"],
    ReqDate: json["ReqDate"],
    ReqQty: json["ReqQty"],
  );

  Map<String, dynamic> toJson() => {
    "IndentSubCode": IndentSubCode,
    "IntendDate": IntendDate,
    "ItemName": ItemName,
    "ItemSubCode": ItemSubCode,
    "ItemUnit": ItemUnit,
    "Rate": Rate,
    "Remarks": Remarks,
    "ReqDate": ReqDate,
    "ReqQty": ReqQty,
  };
}
