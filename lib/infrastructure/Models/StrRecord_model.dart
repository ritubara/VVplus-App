import 'dart:convert';

StrRecord strRecordFromJson(String str) => StrRecord.fromJson(json.decode(str));

String strRecordToJson(StrRecord data) => json.encode(data.toJson());

class StrRecord {
  StrRecord({
    this.strIndTypeCode,
    this.strSiteCode,
    this.strIndNo,
    this.strIndDate,
    this.strDepartmentCode,
    this.strIndentorCode,
    this.strPreparedByCode,
    this.strIndGrid,
  });

  String strIndTypeCode;
  String strSiteCode;
  String strIndNo;
  String strIndDate;
  String strDepartmentCode;
  String strIndentorCode;
  String strPreparedByCode;
  List<StrIndGrid> strIndGrid;

  factory StrRecord.fromJson(Map<String, dynamic> json) => StrRecord(
    strIndTypeCode: json["StrIndTypeCode"],
    strSiteCode: json["StrSiteCode"],
    strIndNo: json["StrIndNo"],
    strIndDate: json["StrIndDate"],
    strDepartmentCode: json["StrDepartmentCode"],
    strIndentorCode: json["StrIndentorCode"],
    strPreparedByCode: json["StrPreparedByCode"],
    strIndGrid: List<StrIndGrid>.from(json["StrIndGrid"].map((x) => StrIndGrid.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "StrIndTypeCode": strIndTypeCode,
    "StrSiteCode": strSiteCode,
    "StrIndNo": strIndNo,
    "StrIndDate": strIndDate,
    "StrDepartmentCode": strDepartmentCode,
    "StrIndentorCode": strIndentorCode,
    "StrPreparedByCode": strPreparedByCode,
    "StrIndGrid": List<dynamic>.from(strIndGrid.map((x) => x.toJson())),
  };
}

class StrIndGrid {
  StrIndGrid({
    this.strItemCode,
    this.dblQuantity,
    this.strCostCenterCode,
    this.strRequiredDate,
    this.strRemark,
  });

  String strItemCode;
  String dblQuantity;
  String strCostCenterCode;
  String strRequiredDate;
  String strRemark;

  factory StrIndGrid.fromJson(Map<String, dynamic> json) => StrIndGrid(
    strItemCode: json["StrItemCode"],
    dblQuantity: json["DblQuantity"],
    strCostCenterCode: json["StrCostCenterCode"],
    strRequiredDate: json["StrRequiredDate"],
    strRemark: json["StrRemark"],
  );

  Map<String, dynamic> toJson() => {
    "StrItemCode": strItemCode,
    "DblQuantity": dblQuantity,
    "StrCostCenterCode": strCostCenterCode,
    "StrRequiredDate": strRequiredDate,
    "StrRemark": strRemark,
  };
}
