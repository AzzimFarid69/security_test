import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:security_test/common/utils/constant.dart';

class FormatUtils {
  static var currencyPattern =
      new NumberFormat.decimalPattern(Constants.FORMAT_AMOUNT);

  static String formatCASAAccountNumber(
    String accountNumber, {
    bool accountNullable = false,
  }) {
    var formattedAccount;
    if (accountNumber.isNotEmpty &&
        accountNumber.length >= 13 &&
        accountNumber.length <= 15) {
      var part1;
      var part2;
      var part3;
      var part4;
      var part5;

      switch (accountNumber.length) {
        case 13:
          {
            part1 = '00${accountNumber.substring(0, 1)}';
            part2 = accountNumber.substring(1, 1);
            part3 = accountNumber.substring(2, 3);
            part4 = accountNumber.substring(5, 1);
            part5 = accountNumber.substring(6, 7);
          }
          break;
        case 14:
          {
            part1 = '0${accountNumber.substring(0, 2)}';
            part2 = accountNumber.substring(2, 1);
            part3 = accountNumber.substring(3, 3);
            part4 = accountNumber.substring(6, 1);
            part5 = accountNumber.substring(7, 7);
          }
          break;
        case 15:
          {
            part1 = accountNumber.substring(0, 3);
            part2 = accountNumber.substring(3, 1);
            part3 = accountNumber.substring(4, 3);
            part4 = accountNumber.substring(7, 1);
            part5 = accountNumber.substring(8, 7);
          }
          break;
        default:
          break;
      }

      formattedAccount = '$part1-$part2-$part3-$part4-$part5';
    } else {
      formattedAccount = (accountNullable) ? null : '-';
    }

    return formattedAccount;
  }
}
