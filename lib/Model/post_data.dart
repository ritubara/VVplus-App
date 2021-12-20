import 'dart:convert';

PostData strRecordFromJson(String str) => PostData.fromJson(json.decode(str));
String strRecordToJson(PostData data) => json.encode(data.toJson());

class PostData {
  String strIndTypeCode;
  String strSiteCode;
  String strIndNo;
  String strIndDate;
  String strDepartmentCode;
  String strIndentorCode;
  String strPreparedByCode;
  List<StrIndGrid> strIndGrid;

  PostData(
      {this.strIndTypeCode,
        this.strSiteCode,
        this.strIndNo,
        this.strIndDate,
        this.strDepartmentCode,
        this.strIndentorCode,
        this.strPreparedByCode,
        this.strIndGrid});

  PostData.fromJson(Map<String, dynamic> json) {
    strIndTypeCode = json['StrIndTypeCode'];
    strSiteCode = json['StrSiteCode'];
    strIndNo = json['StrIndNo'];
    strIndDate = json['StrIndDate'];
    strDepartmentCode = json['StrDepartmentCode'];
    strIndentorCode = json['StrIndentorCode'];
    strPreparedByCode = json['StrPreparedByCode'];
    if (json['StrIndGrid'] != null) {
      strIndGrid = <StrIndGrid>[];
      json['StrIndGrid'].forEach((v) {
        strIndGrid.add(StrIndGrid.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StrIndTypeCode'] = strIndTypeCode;
    data['StrSiteCode'] = strSiteCode;
    data['StrIndNo'] = strIndNo;
    data['StrIndDate'] = strIndDate;
    data['StrDepartmentCode'] = strDepartmentCode;
    data['StrIndentorCode'] = strIndentorCode;
    data['StrPreparedByCode'] = strPreparedByCode;
    if (strIndGrid != null) {
      data['StrIndGrid'] = strIndGrid.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StrIndGrid {
  String strItemCode;
  String dblQuantity;
  String strCostCenterCode;
  String strRequiredDate;
  String strRemark;

  StrIndGrid(
      {this.strItemCode,
        this.dblQuantity,
        this.strCostCenterCode,
        this.strRequiredDate,
        this.strRemark});

  StrIndGrid.fromJson(Map<String, dynamic> json) {
    strItemCode = json['StrItemCode'];
    dblQuantity = json['DblQuantity'];
    strCostCenterCode = json['StrCostCenterCode'];
    strRequiredDate = json['StrRequiredDate'];
    strRemark = json['StrRemark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StrItemCode'] = strItemCode;
    data['DblQuantity'] = dblQuantity;
    data['StrCostCenterCode'] = strCostCenterCode;
    data['StrRequiredDate'] = strRequiredDate;
    data['StrRemark'] = strRemark;
    return data;
  }
}