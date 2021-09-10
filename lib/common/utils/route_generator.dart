import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:security_test/models/month_model.dart';
import 'package:security_test/ui/Acknowledgement.dart';
import 'package:security_test/ui/OneTimeTransfer.dart';
import 'package:security_test/ui/home_screen.dart';
import 'package:security_test/ui/logout_screen.dart';

class Routes {
  static const String home = '/';
  static const String otp = '/otp';
  static const String acknowledge = '/acknowledge';
  static const String logout = '/logout';
}

class CommonArgument {
  final String title;
  final List<GeneralModel> generalModel;

  CommonArgument({
    this.title,
    this.generalModel,
  });
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments as CommonArgument;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.otp:
        return MaterialPageRoute(builder: (_) => OneTimeTransfer());
      case Routes.acknowledge:
        return MaterialPageRoute(
            builder: (_) => Acknowledgement(
                  model: args.generalModel,
                ));
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
