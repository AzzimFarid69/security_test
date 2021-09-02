import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:security_test/screens/home_screen.dart';
import 'package:security_test/screens/logout_screen.dart';
import 'package:security_test/screens/network_screen.dart';
import 'package:security_test/screens/page_1.dart';

class Routes {
  static const String home = '/';
  static const String pageOne = '/pageOne';
  static const String network = '/network';
  static const String logout = '/logout';
}

class CommonArgument {
  final String title;

  CommonArgument({this.title});
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments as CommonArgument;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.pageOne:
        return MaterialPageRoute(builder: (_) => PageOne(title: args.title));
      case Routes.network:
        return MaterialPageRoute(builder: (_) => NetworkScreen());
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
