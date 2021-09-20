class OBHeader {
  String id;
  String domainId;
  String version;
  String dateTimeIn;
  String dateTimeOut;
  bool success;
  String statusCode;
  String statusMessage;
  String referenceNumber;
  String username;
  String userId;

  String get iD {
    return id;
  }

  set iD(String id) {
    this.id = id;
  }

  String get domainid {
    return domainId;
  }

  set domainid(String domainId) {
    this.domainId = domainId;
  }

  String get verSion {
    return version;
  }

  set verSion(String version) {
    this.version = version;
  }

  String get dateTimeIN {
    return dateTimeIn;
  }

  set dateTimeIN(String dateTimeIn) {
    this.dateTimeIn = dateTimeIn;
  }

  String get dateTimeOUT {
    return dateTimeOut;
  }

  set dateTimeOUT(String dateTimeOut) {
    this.dateTimeOut = dateTimeOut;
  }

  bool get sucCess {
    return success;
  }

  set sucCess(bool success) {
    this.success = success;
  }

  String get statusCODE {
    return statusCode;
  }

  set statusCODE(String statusCode) {
    this.statusCode = statusCode;
  }

  String get statusMsg {
    return statusMessage;
  }

  set statusMsg(String statusMessage) {
    this.statusMessage = statusMessage;
  }

  String get refNumber {
    return referenceNumber;
  }

  set refNumber(String referenceNumber) {
    this.referenceNumber = referenceNumber;
  }

  String get userName {
    return username;
  }

  set userName(String username) {
    this.username = username;
  }

  String get userID {
    return userId;
  }

  set userID(String userId) {
    this.userId = userId;
  }
}
