import 'package:security_test/models/month_model.dart';
import 'package:security_test/models/payment_history_model.dart';

class Constants {
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
}
