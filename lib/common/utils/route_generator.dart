import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:security_test/screens/home_screen.dart';
import 'package:security_test/screens/logout_screen.dart';
import 'package:security_test/ui/login/LoginPage_Home_OTP.dart';

class Routes {
  static const String home = '/';
  static const String otp = '/pageOne';
  static const String logout = '/logout';
}

class CommonArgument {
  final String title;

  CommonArgument({this.title});
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguments passed in while calling Navigator.pushNamed
    // final args = settings.arguments as CommonArgument;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.otp:
        return MaterialPageRoute(builder: (_) => LoginPageOTP());
      case Routes.logout:
        return MaterialPageRoute(builder: (_) => LogoutScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}
