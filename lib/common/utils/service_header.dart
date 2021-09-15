import 'package:security_test/common/utils/constant.dart';

class ServiceHeader {
  String clientId = Constants.CLIENT_ID;
  String payload;
  String userId;
  String userName;
  String serviceDest;
  String checkServiceDest;
  String qname;
  String accessToken;
  String refreshToken;
  String ip;
  String deviceModel;
  String version;
  String mtt;

  String get clientID {
    return clientId;
  }

  set clientID(String id) {
    this.clientId = id;
  }

  String get payLoad {
    return payload;
  }

  set payLoad(String payLoad) {
    this.payload = payLoad;
  }

  String get userID {
    return userId;
  }

  set userID(String userid) {
    this.userId = userid;
  }

  String get username {
    return userName;
  }

  set username(String username) {
    this.userName = username;
  }

  String get servicedest {
    return serviceDest;
  }

  set servicedest(String serviceDEst) {
    this.serviceDest = serviceDEst;
  }

  String get checkservicedest {
    return checkServiceDest;
  }

  set checkservicedest(String checkServicedest) {
    this.checkServiceDest = checkServicedest;
  }

  String get qName {
    return qname;
  }

  set qName(String qNAme) {
    this.qname = qNAme;
  }

  String get accesstoken {
    return accessToken;
  }

  set accesstoken(String accToken) {
    this.accessToken = accToken;
  }

  String get refreshtoken {
    return refreshToken;
  }

  set refreshtoken(String token) {
    this.refreshToken = token;
  }

  String get iP {
    return ip;
  }

  set iP(String iP) {
    this.ip = iP;
  }

  String get devicemodel {
    return deviceModel;
  }

  set devicemodel(String device) {
    this.deviceModel = device;
  }

  String get ver {
    return version;
  }

  set ver(String ver) {
    this.version = ver;
  }
}
