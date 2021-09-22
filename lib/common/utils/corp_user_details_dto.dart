import 'package:security_test/common/utils/corp_user_auth_dto.dart';
import 'package:security_test/common/utils/corporate_detail_dto.dart';
import 'package:security_test/common/utils/org_unit_details_dto.dart';

class CorpUserDetailsDTO {
  String jobTitle;
  String id;
  String firstName;
  String lastName;
  String email;
  String phone;
  String mobilePhone;
  String birthDate;
  String idType;
  String idNumber;
  String communication;
  String lastLoginTime;
  String lastLogoutTime;
  String userId;
  String username;
  String authMethod;
  String authIntervalDate;
  String salutation;
  String address1;
  String address2;
  String address3;
  String address4;
  String postcode;
  String expiredInDays;
  String document;
  String cifNo;
  String password;
  String newPassword;
  String accessLevel;
  String effectiveDate;
  String createdBy;
  String createdDateTime;
  String updatedBy;
  String updatedDateTime;
  String domainId;
  String statusCode;
  String countryCode;
  String userGroup;
  String tncAccept;
  String tncAcceptDateTime;
  String tncAcceptVersion;
  String tncId;
  String firstTimeLogin;
  String cfoServicesFlag;
  String createdByWhom;
  CorporateDetailDTO corpDetails;
  List<CorpUserAuthDTO> authorities;
  List<OrgUnitMPDetailDTO> obUserOrganizationUnitMpDetails;

  String get jobtitle {
    return jobTitle;
  }

  set jobtitle(String jobTitle) {
    this.jobTitle = jobTitle;
  }

  String get iD {
    return id;
  }

  set iD(String id) {
    this.id = id;
  }

  String get firstname {
    return firstName;
  }

  set firstname(String firstName) {
    this.firstName = firstName;
  }

  String get lastname {
    return lastName;
  }

  set lastname(String lastName) {
    this.lastName = lastName;
  }

  String get eMail {
    return email;
  }

  set eMail(String email) {
    this.email = email;
  }

  String get pHone {
    return phone;
  }

  set pHone(String phone) {
    this.phone = phone;
  }

  String get mobilephone {
    return mobilePhone;
  }

  set mobilephone(String mobilePhone) {
    this.mobilePhone = mobilePhone;
  }

  String get birthdate {
    return birthDate;
  }

  set birthdate(String birthDate) {
    this.birthDate = birthDate;
  }

  String get idtype {
    return idType;
  }

  set idtype(String idType) {
    this.idType = idType;
  }

  String get idnumber {
    return idNumber;
  }

  set idnumber(String idNumber) {
    this.idNumber = idNumber;
  }

  String get comm {
    return communication;
  }

  set comm(String communication) {
    this.communication = communication;
  }

  String get lastlogintime {
    return lastLoginTime;
  }

  set lastlogintime(String lastLoginTime) {
    this.lastLoginTime = lastLoginTime;
  }

  String get lastlogouttime {
    return lastLogoutTime;
  }

  set lastlogouttime(String lastLogoutTime) {
    this.lastLogoutTime = lastLogoutTime;
  }

  String get userid {
    return userId;
  }

  set userid(String userId) {
    this.userId = userId;
  }

  String get userName {
    return username;
  }

  set userName(String username) {
    this.username = username;
  }

  String get authmethod {
    return authMethod;
  }

  set authmethod(String authMethod) {
    this.authMethod = authMethod;
  }

  String get authintervaldate {
    return authIntervalDate;
  }

  set authintervaldate(String authIntervalDate) {
    this.authIntervalDate = authIntervalDate;
  }

  String get salute {
    return salutation;
  }

  set salute(String salutation) {
    this.salutation = salutation;
  }

  String get add1 {
    return address1;
  }

  set add1(String address1) {
    this.address1 = address1;
  }

  String get add2 {
    return address2;
  }

  set add2(String address2) {
    this.address2 = address2;
  }

  String get add3 {
    return address3;
  }

  set add3(String address3) {
    this.address3 = address3;
  }

  String get add4 {
    return address4;
  }

  set add4(String address4) {
    this.address4 = address4;
  }

  String get postCode {
    return postcode;
  }

  set postCode(String postcode) {
    this.postcode = postcode;
  }

  String get expiredindays {
    return expiredInDays;
  }

  set expiredindays(String expiredInDays) {
    this.expiredInDays = expiredInDays;
  }

  String get doc {
    return document;
  }

  set doc(String document) {
    this.document = document;
  }

  String get cifno {
    return cifNo;
  }

  set cifno(String cifNo) {
    this.cifNo = cifNo;
  }

  String get pass {
    return password;
  }

  set pass(String password) {
    this.password = password;
  }

  String get newPass {
    return newPassword;
  }

  set newPass(String newPassword) {
    this.newPassword = newPassword;
  }

  String get accesslevel {
    return accessLevel;
  }

  set accesslevel(String accessLevel) {
    this.accessLevel = accessLevel;
  }

  String get effectivedate {
    return effectiveDate;
  }

  set effectivedate(String effectiveDate) {
    this.effectiveDate = effectiveDate;
  }

  String get createdby {
    return createdBy;
  }

  set createdby(String createdBy) {
    this.createdBy = createdBy;
  }

  String get createdDate {
    return createdDateTime;
  }

  set createdDate(String createdDateTime) {
    this.createdDateTime = createdDateTime;
  }

  String get updatedby {
    return updatedBy;
  }

  set updatedby(String updatedBy) {
    this.updatedBy = updatedBy;
  }

  String get updateddate {
    return updatedDateTime;
  }

  set updateddate(String updatedDateTime) {
    this.updatedDateTime = updatedDateTime;
  }

  String get domainid {
    return domainId;
  }

  set domainid(String domainId) {
    this.domainId = domainId;
  }

  String get statuscode {
    return statusCode;
  }

  set statuscode(String statusCode) {
    this.statusCode = statusCode;
  }

  String get countrycode {
    return countryCode;
  }

  set countrycode(String countryCode) {
    this.countryCode = countryCode;
  }

  String get usergroup {
    return userGroup;
  }

  set usergroup(String userGroup) {
    this.userGroup = userGroup;
  }

  String get tncaccept {
    return tncAccept;
  }

  set tncaccept(String tncAccept) {
    this.tncAccept = tncAccept;
  }

  String get tncacceptdate {
    return tncAcceptDateTime;
  }

  set tncacceptdate(String tncAcceptDateTime) {
    this.tncAcceptDateTime = tncAcceptDateTime;
  }

  String get tncacceptver {
    return tncAcceptVersion;
  }

  set tncacceptver(String tncAcceptVersion) {
    this.tncAcceptVersion = tncAcceptVersion;
  }

  String get tncid {
    return tncId;
  }

  set tncid(String tncId) {
    this.tncId = tncId;
  }

  String get firsttimelogin {
    return firstTimeLogin;
  }

  set firsttimelogin(String firstTimeLogin) {
    this.firstTimeLogin = firstTimeLogin;
  }

  String get cfoservices {
    return cfoServicesFlag;
  }

  set cfoservices(String cfoServicesFlag) {
    this.cfoServicesFlag = cfoServicesFlag;
  }

  String get createdbywhom {
    return createdByWhom;
  }

  set createdbywhom(String createdByWhom) {
    this.createdByWhom = createdByWhom;
  }

  CorporateDetailDTO get corpDetail {
    return corpDetails;
  }

  set corpDetail(CorporateDetailDTO corpDetails) {
    this.corpDetails = corpDetails;
  }

  List get auths {
    return authorities;
  }

  set auths(List authorities) {
    this.authorities = authorities;
  }

  List get orgUnitMpDetail {
    return obUserOrganizationUnitMpDetails;
  }

  set orgUnitMpDetail(List obUserOrganizationUnitMpDetails) {
    this.obUserOrganizationUnitMpDetails = obUserOrganizationUnitMpDetails;
  }
}
