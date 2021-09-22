class OrgUnitMPDetailDTO {
  String id;
  OrgUnitDetailDTO organizationUnitDetail;
  List<CorpUserRoleDTO> userRoleDetails;

  String get ids {
    return id;
  }

  set ids(String id) {
    this.id = id;
  }

  OrgUnitDetailDTO get orgUnitDetail {
    return organizationUnitDetail;
  }

  set orgUnitDetail(OrgUnitDetailDTO organizationUnitDetail) {
    this.organizationUnitDetail = organizationUnitDetail;
  }

  List get userroledetails {
    return userRoleDetails;
  }

  set userroledetails(List userRoleDetails) {
    this.userRoleDetails = userRoleDetails;
  }
}

class OrgUnitDetailDTO {
  String id;
  String parentId;
  String code;
  String name;
  String structure;
  String type;
  String createdBy;
  String createdDateTime;
  String domainId;
  String status;
  String depth;

  String get iD {
    return id;
  }

  set iD(String id) {
    this.id = id;
  }

  String get prentid {
    return parentId;
  }

  set parentid(String parentId) {
    this.parentId = parentId;
  }

  String get coDe {
    return code;
  }

  set coDe(String code) {
    this.code = code;
  }

  String get names {
    return name;
  }

  set names(String name) {
    this.name = name;
  }

  String get struc {
    return structure;
  }

  set struc(String structure) {
    this.structure = structure;
  }

  String get types {
    return type;
  }

  set types(String type) {
    this.type = type;
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

  String get domainid {
    return domainId;
  }

  set domainid(String domainId) {
    this.domainId = domainId;
  }

  String get statuS {
    return status;
  }

  set statuS(String status) {
    this.status = status;
  }

  String get depths {
    return depth;
  }

  set depths(String depth) {
    this.depth = depth;
  }
}

class CorpUserRoleDTO {
  String id;
  String code;
  String name;
  String domainId;
  String status;
  String filterBy;

  String get ids {
    return id;
  }

  set ids(String id) {
    this.id = id;
  }

  String get codes {
    return code;
  }

  set codes(String code) {
    this.code = code;
  }

  String get names {
    return name;
  }

  set names(String name) {
    this.name = name;
  }

  String get domainid {
    return domainId;
  }

  set domainid(String domainId) {
    this.domainId = domainId;
  }

  String get statuss {
    return status;
  }

  set statuss(String status) {
    this.status = status;
  }

  String get filterby {
    return filterBy;
  }

  set filterby(String filterBy) {
    this.filterBy = filterBy;
  }
}
