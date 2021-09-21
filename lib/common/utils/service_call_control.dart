import 'package:security_test/common/utils/service_header.dart';

class ServiceCallControl {
  static double serviceCallTimeInterval = 5;
  static String lastAccessToken;
  static String lastRefreshToken;
  static String lastRequestQueueName;
  static String lastRequestServiceDest;
  static String lastRequestChequeServiceDest;
  static String lastRequestPayload;
  static var lastRequestDateTime = DateTime.now().toUtc();

  static bool validServiceCall(ServiceHeader serviceHeader) {
    bool sameAccessToken = lastAccessToken == serviceHeader.accesstoken;
    bool sameRefreshToken = lastRefreshToken == serviceHeader.refreshtoken;
    bool sameQueueName = lastRequestQueueName == serviceHeader.qName;
    bool sameServiceDest = lastRequestServiceDest == serviceHeader.servicedest;
    bool sameChequeServiceDest =
        lastRequestChequeServiceDest == serviceHeader.checkservicedest;
    bool samePayload = lastRequestPayload == serviceHeader.payLoad;
    var requestedIncomingDateTime = DateTime.now().toUtc();

    if (sameAccessToken &&
        sameRefreshToken &&
        sameQueueName &&
        sameServiceDest &&
        sameChequeServiceDest &&
        samePayload) {
      Duration duration =
          requestedIncomingDateTime.difference(lastRequestDateTime);

      if (duration.inSeconds < serviceCallTimeInterval) {
        return false;
      }
    }

    lastAccessToken = serviceHeader.accesstoken;
    lastRefreshToken = serviceHeader.refreshtoken;
    lastRequestQueueName = serviceHeader.qName;
    lastRequestServiceDest = serviceHeader.checkservicedest;
    lastRequestPayload = serviceHeader.payLoad;
    lastRequestDateTime = DateTime.now().toUtc();

    return true;
  }
}
