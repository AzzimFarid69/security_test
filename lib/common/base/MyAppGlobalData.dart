class MyAppGlobalData {
  // Versioning Check
  bool requiredCheckVersion;

  bool get requiredCheckVer {
    return requiredCheckVersion;
  }

  set requiredCheckVer(bool requiredCheckVersion) {
    this.requiredCheckVersion = requiredCheckVersion;
  }

  // User Profile
  String iD;
  String corpId;
  String corpName;
  String userId;
  String userName;
  String userNameJustName;
  String firstName;
  String lastName;
  String lastLoginTime;
  String lastLogoutTime;
  String authMethod;
  String passwordExpiryIn;
  String salutaion;

  String get id {
    return iD;
  }

  set id(String iD) {
    this.iD = iD;
  }

  String get corpid {
    return corpId;
  }

  set corpid(String corpId) {
    this.corpId = corpId;
  }

  String get corpname {
    return corpName;
  }

  set corpname(String corpName) {
    this.corpName = corpName;
  }

  String get userid {
    return corpId;
  }

  set userid(String userId) {
    this.corpId = corpId;
  }

  String get username {
    return userName;
  }

  set username(String userName) {
    this.userName = userName;
  }

  String get usernamejustname {
    return userNameJustName;
  }

  set usernamejustname(String userNameJustName) {
    this.userNameJustName = userNameJustName;
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

  String get authmethod {
    return authMethod;
  }

  set authmethod(String authMethod) {
    this.authMethod = authMethod;
  }

  String get pwexpiryin {
    return passwordExpiryIn;
  }

  set pwexpiryin(String passwordExpiryIn) {
    this.passwordExpiryIn = passwordExpiryIn;
  }

  // Permission
  List<String> accessPermission = [];

  List get accesspermission {
    return accessPermission;
  }

  set accesspermission(List accessPermission) {
    this.accessPermission = accessPermission;
  }

  bool permissionNotNull() {
    return (accessPermission != null && accessPermission.length > 0);
  }
}
