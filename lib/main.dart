import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safe_device/safe_device.dart';
import 'package:security_test/common/route_generator.dart';
import 'package:security_test/models/security_model.dart';
import 'package:security_test/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SecurityModel _securityModel = SecurityModel();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    bool isJailBroken;
    bool isRealDevice;
    bool isOnExternalStorage;
    bool isSafeDevice;

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    try {
      isJailBroken = await SafeDevice.isJailBroken;
      isRealDevice = await SafeDevice.isRealDevice;
      isOnExternalStorage = await SafeDevice.isOnExternalStorage;
      isSafeDevice = await SafeDevice.isSafeDevice;
    } catch (error) {
      print(error);
    }

    setState(() {
      _securityModel.isJailBroken = isJailBroken;
      _securityModel.isRealDevice = isRealDevice;
      _securityModel.isOnExternalStorage = isOnExternalStorage;
      _securityModel.isSafeDevice = isSafeDevice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Security Demo Test',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(
        securityModel: _securityModel,
      ),
    );
  }
}
