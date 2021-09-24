import 'package:security_test/common/base/MyAppGlobalData.dart';
import 'package:security_test/models/access_peremission.dart';
import 'package:security_test/models/accounts_model.dart';
import 'package:security_test/models/OBForexRate_Resp.dart';
import 'package:security_test/models/OBInteresRate_Resp.dart';
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

  static List<OBForexRateData> retrieveExchangeRate() => [
        OBForexRateData(currency: 'AED', buyingTT: 35.0983, sellingTT: 35.8074),
        OBForexRateData(
            currency: 'AUD', buyingTT: 118.8482, sellingTT: 123.3400),
        OBForexRateData(
            currency: 'BHD', buyingTT: 341.9480, sellingTT: 348.8560),
        OBForexRateData(
            currency: 'CAD', buyingTT: 117.5133, sellingTT: 121.3348),
        OBForexRateData(
            currency: 'CHF', buyingTT: 141.2568, sellingTT: 145.4135),
        OBForexRateData(currency: 'AED', buyingTT: 35.0983, sellingTT: 35.8074),
        OBForexRateData(
            currency: 'AUD', buyingTT: 118.8482, sellingTT: 123.3400),
        OBForexRateData(
            currency: 'BHD', buyingTT: 341.9480, sellingTT: 348.8560),
        OBForexRateData(
            currency: 'CAD', buyingTT: 117.5133, sellingTT: 121.3348),
        OBForexRateData(
            currency: 'CHF', buyingTT: 141.2568, sellingTT: 145.4135),
        OBForexRateData(currency: 'AED', buyingTT: 35.0983, sellingTT: 35.8074),
        OBForexRateData(
            currency: 'AUD', buyingTT: 118.8482, sellingTT: 123.3400),
        OBForexRateData(
            currency: 'BHD', buyingTT: 341.9480, sellingTT: 348.8560),
        OBForexRateData(
            currency: 'CAD', buyingTT: 117.5133, sellingTT: 121.3348),
        OBForexRateData(
            currency: 'CHF', buyingTT: 141.2568, sellingTT: 145.4135),
      ];

  static List<ProductDetailsDTO> retrieveCASAInterestRate() => [
        ProductDetailsDTO(productName: 'PARINATHA', interestRate: '5.50'),
        ProductDetailsDTO(productName: 'SISU UDANA', interestRate: '5.25'),
        ProductDetailsDTO(productName: 'YES SAVINGS', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'JANAJAYA', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'SAVINGS NORMAL', interestRate: '3.00'),
        ProductDetailsDTO(
            productName: 'SA YES STATEMENT', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'SAHARVEST', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'VANITHA VASANA', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'PARINATHA', interestRate: '5.50'),
        ProductDetailsDTO(productName: 'SISU UDANA', interestRate: '5.25'),
        ProductDetailsDTO(productName: 'YES SAVINGS', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'JANAJAYA', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'SAVINGS NORMAL', interestRate: '3.00'),
        ProductDetailsDTO(
            productName: 'SA YES STATEMENT', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'SAHARVEST', interestRate: '4.00'),
        ProductDetailsDTO(productName: 'VANITHA VASANA', interestRate: '4.00'),
      ];

  static List<InterestRateProductDetailDTO> retrieveProductCategoryList() => [
        InterestRateProductDetailDTO(name: 'FIXED DEPOSIT NORMAL', code: '1'),
        InterestRateProductDetailDTO(
            name: 'FIXED DEPOSIT NORMAL MONTHLY INTEREST', code: '2'),
        InterestRateProductDetailDTO(
            name: "FOREIGN EXCHANGE EARNERS' ACCOUNT - FD", code: '3'),
        InterestRateProductDetailDTO(
            name: 'NO RESIDENT FOREIGN CURRENCY - FD', code: '4'),
        InterestRateProductDetailDTO(
            name: 'RESIDENT FOREIGN CURRENCY - FD', code: '5'),
      ];

  static List<ObFixedDepositRate> retrieveNormalFixedDepositRate() => [
        ObFixedDepositRate(currency: 'LKR', tenure: '1', rate: '18.00'),
        ObFixedDepositRate(currency: 'LKR', tenure: '12', rate: '5.75'),
        ObFixedDepositRate(currency: 'LKR', tenure: '24', rate: '11.0'),
        ObFixedDepositRate(currency: 'LKR', tenure: '3', rate: '13.50'),
        ObFixedDepositRate(currency: 'LKR', tenure: '36', rate: '12.25'),
        ObFixedDepositRate(currency: 'LKR', tenure: '48', rate: '12.75'),
        ObFixedDepositRate(currency: 'LKR', tenure: '6', rate: '11.25'),
      ];

  static List<ObFixedDepositRate> retrieveNormalMonthlyFixedDepositRate() => [
        ObFixedDepositRate(currency: 'LKR', tenure: '12', rate: '9.75'),
        ObFixedDepositRate(currency: 'LKR', tenure: '24', rate: '7.5'),
        ObFixedDepositRate(currency: 'LKR', tenure: '36', rate: '7.55'),
        ObFixedDepositRate(currency: 'LKR', tenure: '48', rate: '7.70'),
        ObFixedDepositRate(currency: 'LKR', tenure: '60', rate: '14.68'),
      ];

  static List<ObFixedDepositRate> retrieveForeignExchangeFixed() => [
        ObFixedDepositRate(currency: 'USD', tenure: '1', rate: '1.55'),
        ObFixedDepositRate(currency: 'USD', tenure: '3', rate: '3.00'),
        ObFixedDepositRate(currency: 'USD', tenure: '12', rate: '9.60'),
      ];

  static List<ObFixedDepositRate> retrieveNonResidentFixed() => [
        ObFixedDepositRate(currency: 'USD', tenure: '1', rate: '1.55'),
        ObFixedDepositRate(currency: 'USD', tenure: '3', rate: '3.00'),
        ObFixedDepositRate(currency: 'USD', tenure: '6', rate: '3.25'),
        ObFixedDepositRate(currency: 'USD', tenure: '12', rate: '9.60'),
        ObFixedDepositRate(currency: 'USD', tenure: '24', rate: '2.30'),
      ];

  static List<ObFixedDepositRate> retrieveForeignResidentFixed() => [
        ObFixedDepositRate(currency: 'USD', tenure: '12', rate: '9.60'),
        ObFixedDepositRate(currency: 'USD', tenure: '1', rate: '1.55'),
        ObFixedDepositRate(currency: 'USD', tenure: '24', rate: '2.30'),
        ObFixedDepositRate(currency: 'USD', tenure: '2', rate: '2.95'),
        ObFixedDepositRate(currency: 'USD', tenure: '3', rate: '3.00'),
        ObFixedDepositRate(currency: 'USD', tenure: '6', rate: '3.25'),
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
  static List<String> getPermission() => [
        '/bib/accountsummary/list',
        '/bib/fundtransfer/quicktransfer/select',
        '/bib/billpayment/select',
        '/bib/workflow/group/layout',
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

  // Menu
  static int FAB_MENU_BATM = 0001;
  static int FAB_MENU_PRODUCT_LISTING = 0002;
  static int FAB_MENU_CALCULATOR = 0003;
  static int FAB_MENU_BANK_RATES = 0004;
  static int FAB_MENU_CONTACT_US = 0005;

  static int DASHBOARD_ACCOUNT_SUMMARY = 1000;
  static int DASHBOARD_TRANSFER_SERVICE = 2000;
  static int DASHBOARD_PAYMENT_SERVICE = 3000;
  static int DASHBOARD_TASK_LIST = 4000;
  static int DASHBOARD_CHEQUE_SERVICE = 5000;
  static int DASHBOARD_SETTING = 6000;

  static int TRANSFER_FUND_TRANSFER = 2100;
  static int TRANSFER_FUND_TRANSFER_OWN = 2101;
  static int TRANSFER_FUND_TRANSFER_FAVOURITE = 2102;
  static int TRANSFER_FUND_TRANSFER_ONE_TIME = 2103;
  static int TRANSFER_INTERBANK_FUND_TRANSFER = 2200;
  static int TRANSFER_INTERBANK_FUND_TRANSFER_FAVOURITE = 2201;
  static int TRANSFER_INTERBANK_FUND_TRANSFER_ONE_TIME = 2202;
  static int TRANSFER_BRANCH_TO_BRANCH = 2300;

  static int PAYMENT_FAVOURITE_BILL_PAYMENT = 3001;
  static int PAYMENT_ONE_TIME_BILL_PAYMENT = 3002;
  static int PAYMENT_BILL_PAYMENT_HISTORY = 3003;
  static int PAYMENT_LOAN_REPAYMENT = 3004;
  static int PAYMENT_CREDIT_CARD_PAYMENT = 3005;

  static int TASKLIST_GROUP = 4001;
  static int TASKLIST_MY = 4002;

  static int CHEQUE_CHEQUEBOOK_REQUEST = 5001;
  static int CHEQUE_STATUS_INQUIRY = 5002;
  static int UNREALIZED_CHEQUE_INQUIRY = 5003;
  static int STOP_CHEQUE_PAYMENT = 5004;

  static int PAWNING_OWN_INQUIRY = 6001;
  static int PAWNING_THIRD_PARTY_PAYMENT = 6002;

  static int SETTING_CHANGE_PASSWORD = 7001;
  static int SETTING_CHANGE_PIN = 7002;
  static int SETTING_REGISTERED_DEVICE = 7003;
  static int SETTING_LOGIN_METHOD = 7004;

  static int CALCULATOR_LOAN = 9901;
  static int CALCULATOR_LOAN_BLOCK = 9902;
  static int CALCULATOR_PENSION = 9903;

  static int BANK_RATE_EXCHANGE_RATE = 9801;
  static int BANK_RATE_RATE_INQUIRY = 9802;
  static int BANK_RATE_FIXED_DEPOSIT_RATE = 9803;
  static int BANK_RATE_CASA_RATE = 9804;

  static int BATM_SEARCH_BY_CURRENT_LOCATION = 9701;
  static int BATM_SEARCH_BY_LOCATION = 9702;
}
