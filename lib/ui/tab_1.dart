import 'package:flutter/material.dart';
import 'package:security_test/common/utils/route_generator.dart';

class TabOne extends StatefulWidget {
  final String title;
  const TabOne({Key key, this.title}) : super(key: key);

  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Hello from ${widget.title ?? ''}"),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, Routes.confirmation,
                    arguments: CommonArgument(title: "This is page one example")),
                child: Text("Go to OTP & Confirmation Template"),
              ),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, Routes.inputFields),
                child: Text("Go to Input Fields example"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
