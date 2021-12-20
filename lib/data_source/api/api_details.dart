// get and post url

const String postApiURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FPostIndent?StrRecord=${'{"StrIndTypeCode":"IND","StrSiteCode":"AD","StrIndNo":"11","StrIndDate":"10/11/2021","StrDepartmentCode":"AD2","StrIndentorCode":"SG344","StrPreparedByCode":"SA","StrIndGrid":[{"StrItemCode":"PN1","DblQuantity":"100","StrCostCenterCode":"AD1","StrRequiredDate":"10/11/2021","StrRemark":"remark2"}]}'}";

const String getIndentorNameURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Indentor","StrSiteCode":"AS","StrV_Type":"IND","StrChkNonStockabl// e":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostC// enterCode":""},{"StrCostCenterCode":""}]}'}";

const String getDepartmentNameURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Department","StrSiteCode":"AS","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";

const String getVoucherTypeURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"VoucherType","StrSiteCode":"","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";

const String getItemNameURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Item","StrSiteCode":"AS","StrV_Type":"","StrChkNonStockable":"N","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";

const String getItemCurrentStatusURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"ItemCurrentStatus","StrSiteCode":"","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"AL1","StrCostCenterCode":"AS1","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":"AS1"},{"StrCostCenterCode":"AS1"}]}'}";

const String getItemCostCenterURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"ItemCostCenter","StrSiteCode":"AS","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"N","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";

// mock data url

const String mockDataIndentorNameURL = "https://vv-plus-app-default-rtdb.firebaseio.com/IndentorName.json";

const String mockDataDepartmentNameURL = "https://vv-plus-app-default-rtdb.firebaseio.com/DepartmentName.json";

const String mockDataVoucherTypeURL = "https://vv-plus-app-default-rtdb.firebaseio.com/VoucherType.json";

const String mockDataItemNameURL = "https://vv-plus-app-default-rtdb.firebaseio.com/ItemName.json";

const String mockDataItemCurrentStatusURL = "https://vv-plus-app-default-rtdb.firebaseio.com/ItemCurrentStatus.json";

const String mockDataItemCostCenterURL = "https://vv-plus-app-default-rtdb.firebaseio.com/ItemCostCenter.json";

const String materialReqPostURL = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataMaterialRequestEntry.json";







