import 'package:flutter/material.dart';
import 'package:security_test/common/base/MyAppGlobalData.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/models/access_peremission.dart';
import 'package:security_test/models/home_page_grid_view_list.dart';

class MenuAccessControl {
  static String GRANT_ACCOUNT_SUMMARY = '/bib/accountsummary/list';
  static String GRANT_FUND_TRANSFER = '/bib/fundtransfer/quicktransfer/select';
  static String GRANT_FUND_TRANSFER_FAVOURITE =
      '/bib/fundtransfer/multileg/select';
  static String GRANT_INTERBANK_FUND_TRANSFER =
      '/bib/interbankFundTransfer/transfer/3rdparty/toaccountselect/form';
  static String GRANT_BILL_PAYMENT = '/bib/billpayment/select';
  static String GRANT_BILL_PAYMENT_HISTORY = '/bib/billpayment/history/select';
  static String GRANT_LOAN_REPAYMENT = '/bib/loan/repayment/select';
  static String GRANT_GROUP_TASK_LIST = "/bib/workflow/group/layout";
  static String GRANT_MY_TASK_LIST = "/bib/workflow/individual/layout";
  static String GRANT_CHEQUE_BOOK_REQUEST =
      "/bib/cheque/bookRequest/select/form";
  static String GRANT_STOP_CHEQUE_PAYMENT = "/bib/cheque/stopPayment/form";
  static String GRANT_CHEQUE_STATUS_INQUIRY =
      "/bib/cheque/chequeStatusInquiry/search";
  static String GRANT_UNREALIZED_CHEQUE_INQUIRY =
      "/bib/cheque/chequeUnrealizeInquiry/form";
  static String GRANT_CHANGE_PASSWORD = "/bib/userprofile/change/password";

  static void navigationMenuControl() {}

  static List<HomePageGridViewListData> dashboardMenuControl() {
    List<AccessPermission> upl = Constants.getPermission();

    List<HomePageGridViewListData> dataList = [];

    if (upl.isNotEmpty && upl.length > 0) {
      for (var i = 0; i < upl.length; i++) {
        if (upl[i].permission.contains(GRANT_ACCOUNT_SUMMARY)) {
          dataList.add(HomePageGridViewListData(
              id: Constants.DASHBOARD_ACCOUNT_SUMMARY,
              image: 1000,
              text: 'Account Summary'));
        }

        if (upl[i].permission.contains(GRANT_FUND_TRANSFER) ||
            upl[i].permission.contains(GRANT_FUND_TRANSFER_FAVOURITE) ||
            upl[i].permission.contains(GRANT_INTERBANK_FUND_TRANSFER)) {
          dataList.add(HomePageGridViewListData(
              id: Constants.DASHBOARD_TRANSFER_SERVICE,
              image: 1000,
              text: 'Fund Transfer'));
        }

        if (upl[i].permission.contains(GRANT_BILL_PAYMENT) ||
            upl[i].permission.contains(GRANT_BILL_PAYMENT_HISTORY) ||
            upl[i].permission.contains(GRANT_LOAN_REPAYMENT)) {
          dataList.add(HomePageGridViewListData(
              id: Constants.DASHBOARD_PAYMENT_SERVICE,
              image: 1000,
              text: 'Payment'));
        }

        if (upl[i].permission.contains(GRANT_GROUP_TASK_LIST) ||
            upl[i].permission.contains(GRANT_MY_TASK_LIST)) {
          dataList.add(HomePageGridViewListData(
              id: Constants.DASHBOARD_TASK_LIST, image: 1000, text: 'Task'));
        }
      }
    }

    dataList.add(HomePageGridViewListData(
        id: Constants.DASHBOARD_SETTING, image: 1000, text: 'Settings'));

    return dataList;
  }
}
