import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_version/new_version.dart';
import 'package:safe_device/safe_device.dart';
import 'package:security_test/common/api/session_timer.dart';
import 'package:security_test/common/components/custom_dialog.dart';
import 'package:security_test/common/utils/global_data.dart';
import 'package:security_test/models/security_model.dart';

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
    print("TEST ::: $context");
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

  static closeApp() {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else if (Platform.isIOS) {
      exit(0);
      // Works but not recommended as Apple may SUSPEND THE APP because it's against Apple Human Interface guidelines to exit the app programmatically.
      // should instead just minimize the app
      // MinimizeApp.minimizeApp();
    }
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  static Future<SecurityModel> safeDeviceCheck(BuildContext context) async {
    SecurityModel _securityModel = SecurityModel();

    try {
      _securityModel.isJailBroken = await SafeDevice.isJailBroken;
      _securityModel.isRealDevice = await SafeDevice.isRealDevice;
      _securityModel.isOnExternalStorage = await SafeDevice.isOnExternalStorage;
      _securityModel.isSafeDevice = await SafeDevice.isSafeDevice;
    } catch (error) {
      print(error);
    }

    if (_securityModel.isJailBroken == true) {
      CustomDialog.generalDialog(
        mContext: context,
        title: "Environmental Risk!",
        content: 'Your phone has been rooted, please exit the app and fix the risk!',
        onProceed: closeApp,
        proceedText: 'Exit',
        cancelText: "Ignore for testing",
        barrierDismissible: false,
      );
    }
    return _securityModel;
  }

  static sessionConditionController(BuildContext context, {bool foreRestart: false}) {
    if (MyGlobalData.token != null) {
      if (foreRestart) {
        SessionTimer.forceRestart(context);
      } else if (!SessionTimer.isRunning()) {
        SessionTimer.restart(context, MyGlobalData.tokenValidPeriod);
      }
      return;
    }
    SessionTimer.stop();
  }
}
