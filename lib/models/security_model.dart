class SecurityModel {
  bool isJailBroken;
  bool isRealDevice;
  bool isOnExternalStorage;
  bool isSafeDevice;

  SecurityModel({
    this.isJailBroken = false,
    this.isRealDevice = true,
    this.isOnExternalStorage = false,
    this.isSafeDevice = false,
  });
}
