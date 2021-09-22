import 'dart:async';

import 'package:flutter/material.dart';
import 'package:security_test/common/utils/custom_colors.dart';
import 'package:security_test/common/utils/route_generator.dart';
import 'package:security_test/ui/home_screen.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(MyApp());
  }, (dynamic error, dynamic stack) {
    print(error);
    print(stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Security Demo Test',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        primaryColor: CustomColors.primaryColor,
        accentColor: CustomColors.accentColor,
        fontFamily: 'Roboto',
        dividerTheme: DividerThemeData(
          thickness: 0.8,
          color: Colors.black,
          space: 0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
