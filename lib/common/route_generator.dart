import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:security_test/screens/home_screen.dart';
import 'package:security_test/screens/page_1.dart';

class Routes {
  static const String pageOne = '/pageOne';
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
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.pageOne:
        return MaterialPageRoute(builder: (_) => PageOne(title: args.title));
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
