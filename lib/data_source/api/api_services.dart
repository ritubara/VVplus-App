// get and post urls
class ApiService{

  static const String postApiURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FPostIndent?StrRecord=${'{"StrIndTypeCode":"IND","StrSiteCode":"AD","StrIndNo":"11","StrIndDate":"10/11/2021","StrDepartmentCode":"AD2","StrIndentorCode":"SG344","StrPreparedByCode":"SA","StrIndGrid":[{"StrItemCode":"PN1","DblQuantity":"100","StrCostCenterCode":"AD1","StrRequiredDate":"10/11/2021","StrRemark":"remark2"}]}'}";

  // static const String postApiURL = "http://103.136.82.200:888/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FPostStkReceive?StrRecord={"StrVType":"ITREC","StrVDate":"2022-01-29","StrSiteCode":"AD","StrReceiveFrom":"SM149",StrIndGrid:[{"StrItemCode":"1","DblQuantity":"10","DblAmt":"100","DblRate":"100","StrCostCenterCode":"AD1","StrGodown":"AD1","StrRemark":"Remark1"}],"StrPreparedBy":"SA"}'}";
  static const String getIndentorNameURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Indentor","StrSiteCode":"AS","StrV_Type":"IND","StrChkNonStockabl// e":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostC// enterCode":""},{"StrCostCenterCode":""}]}'}";

  static const String getDepartmentNameURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Department","StrSiteCode":"AS","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";

  static const String getVoucherTypeURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"VoucherType","StrSiteCode":"","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";
// static const String getVoucherTypeURL = "http://103.136.82.200:888/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetStockReceive?StrRecord= {"StrFilter":"VoucherType","StrSiteCode":"AD","StrV_Type":""}";
  
  static const String getItemNameURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"Item","StrSiteCode":"AS","StrV_Type":"","StrChkNonStockable":"N","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";
// static const String getItemNameURL = "http://103.136.82.200:888/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetStockReceive?StrRecord= {"StrFilter":"Item","StrSiteCode":"AD","StrV_Type":""}";

  static const String getItemCurrentStatusURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"ItemCurrentStatus","StrSiteCode":"","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"AL1","StrCostCenterCode":"AS1","StrAllCostCenter":"","StrUPCostCenter":[{"StrCostCenterCode":"AS1"},{"StrCostCenterCode":"AS1"}]}'}";

  static const String getItemCostCenterURL = "http://103.136.82.200:777/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetIndent?StrRecord=${'{"StrFilter":"ItemCostCenter","StrSiteCode":"AS","StrV_Type":"","StrChkNonStockable":"","StrItemCode":"","StrCostCenterCode":"","StrAllCostCenter":"N","StrUPCostCenter":[{"StrCostCenterCode":""},{"StrCostCenterCode":""}]}'}";
// static const String getItemCostCenterURL = "http://103.136.82.200:888/Individual_WebSite/LoginInfo_WS/WCF/WebService_Test.asmx/FGetStockReceive?StrRecord= {"StrFilter":"CostCenter","StrSiteCode":"AD","StrV_Type":""}'}";
  
// mock database get url

  static const String mockDataIndentorNameURL = "https://vv-plus-app-default-rtdb.firebaseio.com/StrRecord/0/IndentorName.json";

  static const String mockDataDepartmentNameURL = "https://vv-plus-app-default-rtdb.firebaseio.com/StrRecord/0/DepartmentName.json";

  static const String mockDataVoucherTypeURL = "https://vv-plus-app-default-rtdb.firebaseio.com/StrRecord/0/VoucherType.json";

  static const String mockDataItemNameURL = "https://vv-plus-app-default-rtdb.firebaseio.com/StrRecord/0/ItemName.json";

  static const String mockDataItemCurrentStatusURL = "https://vv-plus-app-default-rtdb.firebaseio.com/StrRecord/0/ItemCurrentStatus.json";

  static const String mockDataItemCostCenterURL = "https://vv-plus-app-default-rtdb.firebaseio.com/StrRecord/0/ItemCostCenter.json";

// mock database post url

  static const String materialReqPostURL = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/PurchasePageData/0/PostDataMaterialRequestEntry.json";

  static const String mockDataPostDailyManPowerURL = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/ContractorPageData/0/PostDataDailyManPower.json";

  static const String mockDataPostMaterialRequestEntryURL = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/PurchasePageData/0/PostDataMaterialRequestEntry.json";

  static const String mockDataPostPlacePurchaseOrderURL = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/PurchasePageData/0/PostDataPlacePurchaseOrder.json";

  static const String mockDataPostGoodsReceiveEntryURL = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/PurchasePageData/0/PostDataGoodsReceiptEntry.json";

  static const String mockDataPostStockIssueEntry = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/StorePageData/0/PostStockIssueEntry.json";

  static const String mockDataPostStockReceiveEntry = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/StorePageData/0/PostStockReceiveEntry.json";

  static const String mockDataPostPhaseToPhaseTransfer = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/StorePageData/0/PostPhaseToPhaseTransfer.json";

  static const String mockDataPostBranchToBranchSend = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/StorePageData/0/PostBranchToBranchSend.json";

  static const String mockDataPostBranchToBranchReceive = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/StorePageData/0/PostBranchToBranchReceive.json";

  static const String mockDataPostExtraWorkEntry = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/SalesPageData/0/PostExtraWorkEntry.json";

  static const String mockDataPostUnitCancellation = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/SalesPageData/0/PostUnitCancellation.json";

  static const String mockDataPostDiscountApproval = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/SalesPageData/0/PostDiscountApproval.json";

  static const String mockDataPostChequeReceive = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/SalesPageData/0/PostChequeReceive.json";

  static const String mockDataPostChequeDeposit = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/SalesPageData/0/PostChequeDeposit.json";

  static const String mockDataPostChequeCleared = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/SalesPageData/0/PostChequeCleared.json";

  static const String mockDataPostItemDetail = "https://vv-plus-app-default-rtdb.firebaseio.com/PostDataRecord/0/PurchasePageData/0/PostItemDetail.json";

}
