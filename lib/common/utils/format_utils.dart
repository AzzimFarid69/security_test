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

  static String formatFDLoanAccountNumber(
    String accountNumber, {
    bool accountNullable = false,
  }) {
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
            part2 = accountNumber.substring(1, 3);
            part3 = accountNumber.substring(3, 5);
            part4 = accountNumber.substring(5, 13);
            part5 = accountNumber.substring(13, 14);
          }
          break;
        case 15:
          {
            part1 = '0${accountNumber.substring(0, 2)}';
            part2 = accountNumber.substring(2, 4);
            part3 = accountNumber.substring(4, 6);
            part4 = accountNumber.substring(6, 14);
            part5 = accountNumber.substring(14, 15);
          }
          break;
        case 16:
          {
            part1 = accountNumber.substring(0, 3);
            part2 = accountNumber.substring(3, 5);
            part3 = accountNumber.substring(5, 7);
            part4 = accountNumber.substring(7, 15);
            part5 = accountNumber.substring(15, 16);
          }
          break;
        default:
          break;
      }

      formattedAccount = '$part1-$part2-$part3-$part4-$part5';
    } else {
      formattedAccount = accountNullable ? null : '-';
    }

    return formattedAccount;
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
      var part4 = accountNumber.substring(11, 16);

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

  static String formatter(
    String amount,
  ) {
    double amountString = double.parse(amount);
    var format = new NumberFormat(Constants.FORMAT_AMOUNT);

    return format.format(amountString);
  }

  static String dateTimeFormat(String dateTime) {
    var dateString;
    var dateTimeFormatter = DateFormat(Constants.FORMAT_DATETIME);

    if (dateTime.isNotEmpty) {
      dateString = dateTimeFormatter.format(DateTime.parse(dateTime));
      return dateString;
    }

    return '-';
  }

  static String dateFormat(String date) {
    var dateString;
    var dateFormatter = DateFormat(Constants.FORMAT_DATE);

    if (date.isNotEmpty) {
      dateString = dateFormatter.format(DateTime.parse(date));
      return dateString;
    }

    return '-';
  }

  static String timeFormat(String time) {
    var timeString;
    var timeFormatter = DateFormat(Constants.FORMAT_TIME);

    if (time.isNotEmpty) {
      timeString = timeFormatter.format(DateTime.parse(time));
      return timeString;
    }

    return '-';
  }
}
