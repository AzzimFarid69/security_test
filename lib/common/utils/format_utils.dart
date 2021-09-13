import 'package:intl/intl.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/models/amount_dto.dart';

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
            part2 = accountNumber.substring(1, 2);
            part3 = accountNumber.substring(2, 5);
            part4 = accountNumber.substring(5, 6);
            part5 = accountNumber.substring(6, 13);
          }
          break;
        case 14:
          {
            part1 = '0${accountNumber.substring(0, 2)}';
            part2 = accountNumber.substring(2, 3);
            part3 = accountNumber.substring(3, 6);
            part4 = accountNumber.substring(6, 7);
            part5 = accountNumber.substring(7, 14);
          }
          break;
        case 15:
          {
            part1 = accountNumber.substring(0, 3);
            part2 = accountNumber.substring(3, 4);
            part3 = accountNumber.substring(4, 7);
            part4 = accountNumber.substring(7, 8);
            part5 = accountNumber.substring(8, 15);
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

  static String formatFDLoanAccountNumber(String accountNumber,
      {bool accountNullable = false}) {
    var formattedAccount;

    if (accountNumber.isNotEmpty &&
        accountNumber.length >= 14 &&
        accountNumber.length <= 16) {
      var part1;
      var part2;
      var part3;
      var part4;
      var part5;

      switch (accountNumber.length) {
        case 14:
          {
            part1 = '00${accountNumber.substring(0, 1)}';
            part2 = accountNumber.substring(1, 2);
            part3 = accountNumber.substring(3, 4);
            part4 = accountNumber.substring(5, 8);
            part5 = accountNumber.substring(13, 14);
          }
          break;
        case 15:
          {
            part1 = '0${accountNumber.substring(0, 2)}';
            part2 = accountNumber.substring(2, 2);
            part3 = accountNumber.substring(4, 5);
            part4 = accountNumber.substring(6, 8);
            part5 = accountNumber.substring(13, 14);
          }
          break;
        case 16:
          {
            part1 = accountNumber.substring(0, 3);
            part2 = accountNumber.substring(3, 4);
            part3 = accountNumber.substring(5, 6);
            part4 = accountNumber.substring(7, 8);
            part5 = accountNumber.substring(14, 15);
          }
          break;
      }
    }
  }

  static String formatCCAccountNumber(
    String accountNumber, {
    bool accountNullable = false,
  }) {
    var formattedAccount;

    if (accountNumber.isNotEmpty && accountNumber.length == 16) {
      var part1 = accountNumber.substring(0, 4);
      var part2 = accountNumber.substring(4, 8);
      var part3 = accountNumber.substring(8, 12);
      var part4 = accountNumber.substring(11, 15);

      // Format: '0000-0000-0000-0000'
      formattedAccount = '$part1-$part2-$part3-$part4';
    } else {
      formattedAccount = accountNullable ? null : '-';
    }

    return formattedAccount;
  }

  static String formatAmount(
    String amount,
    String currency, {
    bool currencyRequired = true,
  }) {
    var amountString;

    if (currency.isNotEmpty) {
      currency = Constants.DEFAULT_CURRENCY;
    }

    return '${currencyRequired ? currency : null} $amountString';
  }

  static String formatAmountDto(AmountDto balance) {
    if (balance != null) {
      return formatAmount(
        balance.amount,
        balance.currency,
      );
    }
    return '${Constants.DEFAULT_CURRENCY} ${Constants.DEFAULT_AMOUNT}';
  }
}
