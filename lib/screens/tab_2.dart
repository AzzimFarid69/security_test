import 'package:flutter/material.dart';

class TabTwo extends StatefulWidget {
  final String title;
  const TabTwo({Key key, this.title}) : super(key: key);

  @override
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Text("Hello from ${widget.title ?? ''}"),
    );
  }
}
