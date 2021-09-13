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
}
