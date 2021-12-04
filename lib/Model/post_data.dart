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
      strIndGrid = new List<StrIndGrid>();
      json['StrIndGrid'].forEach((v) {
        strIndGrid.add(new StrIndGrid.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StrIndTypeCode'] = this.strIndTypeCode;
    data['StrSiteCode'] = this.strSiteCode;
    data['StrIndNo'] = this.strIndNo;
    data['StrIndDate'] = this.strIndDate;
    data['StrDepartmentCode'] = this.strDepartmentCode;
    data['StrIndentorCode'] = this.strIndentorCode;
    data['StrPreparedByCode'] = this.strPreparedByCode;
    if (this.strIndGrid != null) {
      data['StrIndGrid'] = this.strIndGrid.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StrItemCode'] = this.strItemCode;
    data['DblQuantity'] = this.dblQuantity;
    data['StrCostCenterCode'] = this.strCostCenterCode;
    data['StrRequiredDate'] = this.strRequiredDate;
    data['StrRemark'] = this.strRemark;
    return data;
  }
}