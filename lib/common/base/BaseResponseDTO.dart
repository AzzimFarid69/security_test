import 'package:security_test/common/utils/ob_fault.dart';
import 'package:security_test/common/utils/ob_header.dart';
import 'package:security_test/common/utils/ob_password_policy_detail.dart';
import 'package:security_test/common/utils/ob_token.dart';

class BaseResponseDTO {
  OBHeader obHeader;
  OBFault fault;
  OBToken token;
  String cacheId;
  String serverDate;
  String transactionDateValidMsg;
  String transactionTimeValidMsg;
  String passwordPolicy;
  String authMethod;
  bool requireSecondAuth;
  OBPasswordPolicyDetail obPasswordPolicyDetail;
  Map<String, String> authMethodMap;
  String activateSWToken;
  String activateCode;

  OBHeader get obHEADER {
    return obHeader;
  }

  set obHEADER(OBHeader obHeader) {
    this.obHeader = obHeader;
  }

  OBFault get obFault {
    return fault;
  }

  set obFault(OBFault fault) {
    this.fault = fault;
  }

  OBToken get obToken {
    return token;
  }

  set obToken(OBToken token) {
    this.token = token;
  }

  String get cacheID {
    return cacheId;
  }

  set cacheID(String cacheId) {
    this.cacheId = cacheId;
  }

  String get serverDATE {
    return serverDate;
  }

  set serverDATE(String serverDate) {
    this.serverDate = serverDate;
  }

  String get transactionDATEVALIDMSG {
    return transactionDateValidMsg;
  }

  set transactionDATEVALIDMSG(String transactionDateValidMsg) {
    this.transactionDateValidMsg = transactionDateValidMsg;
  }

  String get transactionTIMEVALIDMSG {
    return transactionTimeValidMsg;
  }

  set transactionTIMEVALIDMSG(String transactionTimeValidMsg) {
    this.transactionTimeValidMsg = transactionTimeValidMsg;
  }

  String get pwPolicy {
    return passwordPolicy;
  }

  set pwPolicy(String passwordPolicy) {
    this.passwordPolicy = passwordPolicy;
  }

  String get authMeth {
    return authMethod;
  }

  set authMeth(String authMethod) {
    this.authMethod = authMethod;
  }

  bool get require2ndAuth {
    return requireSecondAuth;
  }

  set require2ndAuth(bool requireSecondAuth) {
    this.requireSecondAuth = requireSecondAuth;
  }

  OBPasswordPolicyDetail get obPassPolicyDetail {
    return obPasswordPolicyDetail;
  }

  set obPassPolicyDetail(OBPasswordPolicyDetail obPasswordPolicyDetail) {
    this.obPasswordPolicyDetail = obPasswordPolicyDetail;
  }

  Map<String, String> get authMethMap {
    return authMethodMap;
  }

  set authMethMap(Map<String, String> authMehtodMap) {
    this.authMethodMap = authMethodMap;
  }

  String get activeSwToken {
    return activateSWToken;
  }

  set activeSwToken(String activateSWToken) {
    this.activateSWToken = activateSWToken;
  }
}
