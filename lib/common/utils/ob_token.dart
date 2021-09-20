class OBToken {
  String accessToken;
  String tokenType;
  String refreshToken;
  String expiredIn;
  String scope;

  String get accessTOKEN {
    return accessToken;
  }

  set accessTOKEN(String accessToken) {
    this.accessToken = accessToken;
  }

  String get tokenTYPE {
    return tokenType;
  }

  set tokenTYPE(String tokenType) {
    this.tokenType = tokenType;
  }

  String get refreshTOKEN {
    return refreshToken;
  }

  set refreshTOKEN(String refreshToken) {
    this.refreshToken = refreshToken;
  }

  String get expiredIN {
    return expiredIn;
  }

  set expiredIN(String expiredIn) {
    this.expiredIn = expiredIn;
  }

  String get scoPe {
    return scope;
  }

  set scoPe(String scope) {
    this.scope = scope;
  }
}
