class MyGlobalData {
  // Versioning Check
  static bool requiredCheckVersion = false;

  // User Profile
  static String iD = '';
  static String corpId = '';
  static String corpName = '';
  static String userId = '';
  static String userName = '';
  static String userNameJustName = '';
  static String firstName = '';
  static String lastName = '';
  static String lastLoginTime = '';
  static String lastLogoutTime = '';
  static String authMethod = '';
  static String passwordExpiryIn = '';
  static String salutaion = '';

  // Permission
  static List<String> accessPermission = [];
  static List authMethodList = [];

  // Authentication
  static String token = '';
  static String refreshToken = '';
  static String tokenType = '';
  static int tokenValidPeriod = 0;
  static String tokenScope = '';
  static bool isLogin = false;
  static String ipAddress = '';

  // TempData
  static bool firstTimeLogin = false;
  static bool requiredTermAndCondition = false;
  static bool requiredChangePassword = false;
  static String password = '';
  static String mobilePin = '';
  static double currentLatitude = 0;
  static double currentLongitude = 0;

  static bool permissionNotNull() {
    return (accessPermission.isNotEmpty && accessPermission.length > 0);
  }

  static clearAllData() {
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
    clearTempData();
  }

  static clearToken() {
    token = null;
    refreshToken = null;
    tokenType = null;
    tokenValidPeriod = 0;
    tokenScope = null;
  }

  static clearTempData() {
    firstTimeLogin = false;
    requiredTermAndCondition = false;
    password = null;
    mobilePin = null;
    currentLatitude = 0;
    currentLongitude = 0;
  }
}
