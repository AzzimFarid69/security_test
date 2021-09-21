import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:security_test/models/OBForexRate_Resp.dart';
import 'package:security_test/models/OBInteresRate_Resp.dart';
import 'package:security_test/models/month_model.dart';
import 'package:security_test/ui/Acknowledgement.dart';
import 'package:security_test/ui/OneTimeTransfer.dart';
import 'package:security_test/ui/bankRates/casaInterestRate/casa_interest_rate_activity.dart';
import 'package:security_test/ui/bankRates/exchangeRate/inquiry_exchange_rate.dart';
import 'package:security_test/ui/bankRates/inquiry_service_activity.dart';
import 'package:security_test/ui/bankRates/interestRate/inquiry_interest_detail_activity.dart';
import 'package:security_test/ui/bankRates/interestRate/inquiry_interest_rate_activity.dart';
import 'package:security_test/ui/bankRates/rate_inquiry_activity.dart';
import 'package:security_test/ui/contacts.dart';
import 'package:security_test/ui/home_screen.dart';
import 'package:security_test/ui/input_fields_examples.dart';
import 'package:security_test/ui/logout_screen.dart';

class Routes {
  static const String home = '/';
  static const String confirmation = '/confirmation';
  static const String acknowledge = '/acknowledge';
  static const String inputFields = '/inputFields';
  static const String contacts = '/contacts';
  static const String inquiryService = '/inquiryService';
  static const String rateInquiry = '/rateInquiry';
  static const String exchangeRate = '/exchangeRate';
  static const String fixedDeposit = '/fixedDeposit';
  static const String fixedDepositDetails = '/fixedDepositDetails';
  static const String casaInterestRate = '/casaInterestRate';
  static const String logout = '/logout';
}

class CommonArgument {
  final String title;
  final List<GeneralModel> generalModel;
  final List<OBForexRateData> forexRateList;
  final List<ProductDetailsDTO> productDetails;
  final List<InterestRateProductDetailDTO> productCategoryList;
  final List<ObFixedDepositRate> obFixedDepositRateDetails;

  CommonArgument({
    this.title,
    this.generalModel,
    this.forexRateList,
    this.productDetails,
    this.productCategoryList,
    this.obFixedDepositRateDetails,
  });
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments as CommonArgument;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.confirmation:
        return MaterialPageRoute(builder: (_) => OneTimeTransfer());
      case Routes.acknowledge:
        return MaterialPageRoute(
          builder: (_) => Acknowledgement(
            model: args.generalModel,
          ),
        );
      case Routes.inputFields:
        return MaterialPageRoute(builder: (_) => InputFieldsScreen());
      case Routes.contacts:
        return MaterialPageRoute(builder: (_) => ContactsScreen());
      case Routes.inquiryService:
        return MaterialPageRoute(builder: (_) => InquiryServiceActivity());
      case Routes.rateInquiry:
        return MaterialPageRoute(builder: (_) => RateInquiryActivity());
      case Routes.exchangeRate:
        return MaterialPageRoute(
          builder: (_) => InquiryExchangeRateActivity(
            forexRateList: args.forexRateList,
          ),
        );
      case Routes.fixedDeposit:
        return MaterialPageRoute(
          builder: (_) => InquiryInterestRateActivity(
            productCategoryList: args.productCategoryList,
          ),
        );
      case Routes.fixedDepositDetails:
        return MaterialPageRoute(
          builder: (_) => InquiryInterestRateDetailActivity(
            title: args.title,
            obFixedDepositRateDetails: args.obFixedDepositRateDetails,
          ),
        );
      case Routes.casaInterestRate:
        return MaterialPageRoute(
          builder: (_) => CASAInterestRateActivity(
            productDetails: args.productDetails,
          ),
        );
      case Routes.logout:
        return MaterialPageRoute(builder: (_) => LogoutScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}
