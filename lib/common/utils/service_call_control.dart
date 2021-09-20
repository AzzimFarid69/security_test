import 'package:security_test/common/utils/service_header.dart';

class ServieCallControl {
  double serviceCallTimeInterval = 5;
  static String lastAccessToken;
  static String lastRefreshToken;
  static String lastRequestQueueName;
  static String lastRequestServiceDest;
  static String lastRequestChequeServiceDest;
  static String lastRequestPayload;
  static var lastRequestDateTime = DateTime;

  static bool validServiceCall(ServiceHeader serviceHeader) {
    lastAccessToken = serviceHeader.accesstoken;
    lastRefreshToken = serviceHeader.refreshtoken;
    lastRequestQueueName = serviceHeader.qName;
    lastRequestServiceDest = serviceHeader.checkservicedest;
    lastRequestPayload = serviceHeader.payLoad;

    return true;
  }
}
