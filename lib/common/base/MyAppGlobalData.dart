class MyAppGlobalData {
  // Versioning Check
  bool requiredCheckVersion;

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

  // Permission
  List<String> accessPermission = [];
  List authMethodList;

  // Authentication
  String token;
  String refreshToken;
  String tokenType;
  int tokenValidPeriod;
  String tokenScope;
  bool isLogin;
  String ipAddress;

  // TempData
  bool firstTimeLogin;
  bool requiredTermAndCondition;
  bool requiredChangePassword;
  String password;
  String mobilePin;
  static double currentLatitude;
  static double currentLongitude;

  bool get requiredCheckVer {
    return requiredCheckVersion;
  }

  set requiredCheckVer(bool requiredCheckVersion) {
    this.requiredCheckVersion = requiredCheckVersion;
  }

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

  List get accesspermission {
    return accessPermission;
  }

  set accesspermission(List accessPermission) {
    this.accessPermission = accessPermission;
  }

  String get toKEN {
    return token;
  }

  set toKEN(String token) {
    this.token = token;
  }

  String get refreshtoken {
    return refreshToken;
  }

  set refreshtoken(String refreshToken) {
    this.refreshToken = refreshToken;
  }

  int get tokenvalidperiod {
    return tokenValidPeriod;
  }

  set tokenvalidperiod(int tokenValidPeriod) {
    this.tokenValidPeriod = tokenValidPeriod;
  }

  String get tokenscope {
    return tokenScope;
  }

  set tokenscope(String tokenScope) {
    this.tokenScope = tokenScope;
  }

  bool get islogin {
    return isLogin;
  }

  set islogin(bool isLogin) {
    this.isLogin = isLogin;
  }

  String get ipaddress {
    return ipAddress;
  }

  set ipaddress(String ipAddress) {
    this.ipAddress = ipAddress;
  }

  bool permissionNotNull() {
    return (accessPermission.isNotEmpty && accessPermission.length > 0);
  }

  void clearAllData() {
    iD = null;
    corpId = null;
    userId = null;
    corpName = null;
    userName = null;
    userNameJustName = null;
    firstName = null;
    lastName = null;
    lastLoginTime = null;
    lastLogoutTime = null;
    authMethod = null;
    passwordExpiryIn = null;
    salutaion = null;

    accessPermission = [];
    authMethodList = [];

    clearToken();
  }

  void clearToken() {
    token = null;
    refreshToken = null;
    tokenType = null;
    tokenValidPeriod = 0;
    tokenScope = null;
  }

  void clearTempData() {
    firstTimeLogin = false;
    requiredTermAndCondition = false;
    password = null;
    mobilePin = null;
    currentLatitude = 0;
    currentLongitude = 0;
  }
}
