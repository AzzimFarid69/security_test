import 'package:security_test/models/accounts_model.dart';
import 'package:security_test/models/month_model.dart';
import 'package:security_test/models/payment_history_model.dart';

class Constants {
  // Default Value
  static const DEFAULT_CURRENCY = 'LKR';
  static const DEFAULT_AMOUNT = '0.00';
  static const skEmail = 'email';
  static const skPassword = 'password';
  static List<GeneralModel> getMonthModel() => [
        GeneralModel(
            name: 'January',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'February',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'March',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'April',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'May',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'June',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'July',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'August',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'September',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'October',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'November',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
        GeneralModel(
            name: 'December',
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
      ];
  static const double padding = 20;
  static const double avatarRadius = 45;
  static List<PaymentHistoryModel> getPayHistory() => [
        PaymentHistoryModel(
          '18-07-2017 06:27:28 PM',
          'ulp100370',
          '1707180004058984',
          '15,000.00',
          '1',
          'Immediate Bill Payment',
        ),
        PaymentHistoryModel(
          '19-07-2017 06:30:28 PM',
          'ulp100371',
          '1707180004058985',
          '15,000.00',
          '2',
          'Transfer Funds',
        )
      ];

  static List<SavingsAccountModel> getSavings() => [
        SavingsAccountModel(
          '049200140156102',
          '413.24',
          '413.24',
        ),
        SavingsAccountModel(
          '204200140156102',
          '710592.24',
          '710592.24',
        ),
        SavingsAccountModel(
          '1234567891012',
          '710592.24',
          '710592.24',
        ),
        SavingsAccountModel(
          '12345678910121',
          '710592.24',
          '710592.24',
        ),
      ];
  static List<LoanAccountModel> getLoans() => [
        LoanAccountModel(
          '2048101000005135',
          '25000.00',
        ),
        LoanAccountModel(
          '2048101000005134',
          '75000.00',
        ),
        LoanAccountModel(
          '2048101000005133',
          '125000.00',
        ),
        LoanAccountModel(
          '2048101000005132',
          '200000.00',
        ),
        LoanAccountModel(
          '2048101000005131',
          '300000.00',
        ),
        LoanAccountModel(
          '12345678910113',
          '300000.00',
        ),
        LoanAccountModel(
          '123456789101135',
          '300000.20',
        ),
      ];

  static List<CreditCardAccountModel> getCreditAcc() => [
        CreditCardAccountModel(
          '1234567891011123',
          '100000.00',
        ),
      ];

  static List<FdAccountModel> getFdAcc() => [
        FdAccountModel(
          '2048101000005135',
          '25000.00',
        ),
        FdAccountModel(
          '2048101000005134',
          '75000.00',
        ),
        FdAccountModel(
          '2048101000005133',
          '125000.00',
        ),
        FdAccountModel(
          '2048101000005132',
          '200000.00',
        ),
        FdAccountModel(
          '2048101000005131',
          '300000.00',
        ),
        FdAccountModel(
          '12345678910113',
          '300000.00',
        ),
        FdAccountModel(
          '123456789101135',
          '300000.20',
        ),
      ];

  // Value Formatting //
  static const FORMAT_NUMBER = '##,###,###';
  static const FORMAT_AMOUNT = '#,##0.00';
  static const FORMAT_EXCHANGE_RATE = 'N4';
  static const FORMAT_FUND_TRANSFER_EXCHANGE_RATE = 'N9';
  static const FORMAT_DEFAULT_TIMEZONE = 'Asia/Colombo';

  // DATE FORMAT //
  static const FORMAT_DATETIME = "dd-MM-yyyy hh:mm:ss a";
  static const FORMAT_DATE = "dd-MM-yyyy";
  static const FORMAT_TIME = "hh:mm:ss a";

  // RabbitMQ
  static const CLIENT_ID = "mobileApp";
  static const RESPOND_TIMEOUT = 70000;
  static const REQUESTED_CONNECTION_TIMEOUT = 15000;
  static const IP = "digiuat.peoplesbank.lk";
  static const Port = 5672;
  static const VirtualHost = "/cmb_uat";
  static const ServerName = IP;
  static const bool Enabled = false;
  static const RMQ_U = "";
  static const RMQ_P = "";
}
