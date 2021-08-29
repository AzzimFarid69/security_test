import 'package:flutter/material.dart';
import 'package:new_version/new_version.dart';
import 'package:safe_device/safe_device.dart';
import 'package:security_test/common/global_data.dart';
import 'package:security_test/models/security_model.dart';
import 'package:security_test/utils/session_timer.dart';

extension StringExtension on String {
  bool get isNotNullOrEmpty => this != null && this.isNotEmpty;
}

class Utils {
  // Instantiate NewVersion manager object (Using GCP Console app as example)
  static final newVersion = NewVersion(
    iOSId: 'com.google.Vespa',
    androidId: 'com.google.android.apps.cloudconsole',
  );

  static basicAppVersionCheck(BuildContext context) {
    newVersion.showAlertIfNecessary(context: context);
  }

  static advancedAppVersionCheck(BuildContext context) async {
    final status = await newVersion.getVersionStatus();
    debugPrint(status.releaseNotes);
    debugPrint(status.appStoreLink);
    debugPrint(status.localVersion);
    debugPrint(status.storeVersion);
    debugPrint(status.canUpdate.toString());
    newVersion.showUpdateDialog(
      context: context,
      versionStatus: status,
      dialogTitle: 'Custom Title',
      dialogText: 'Custom Text',
    );
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  static Future<SecurityModel> safeDeviceCheck() async {
    SecurityModel _securityModel = SecurityModel();

    try {
      _securityModel.isJailBroken = await SafeDevice.isJailBroken;
      _securityModel.isRealDevice = await SafeDevice.isRealDevice;
      _securityModel.isOnExternalStorage = await SafeDevice.isOnExternalStorage;
      _securityModel.isSafeDevice = await SafeDevice.isSafeDevice;
    } catch (error) {
      print(error);
    }

    return _securityModel;
  }

  static sessionConditionController({bool foreRestart: false}) {
    if (MyGlobalData.token != null) {
      if (foreRestart) {
        SessionTimer.forceRestart();
      } else if (!SessionTimer.isRunning()) {
        SessionTimer.restart(MyGlobalData.tokenValidPeriod);
      }
      return;
    }
    SessionTimer.stop();
  }
}
