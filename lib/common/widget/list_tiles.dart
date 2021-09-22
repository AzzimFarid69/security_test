import 'package:flutter/material.dart';

import 'custom_widget.dart';

class MyListTile extends StatelessWidget {
  final String drawable;
  final String title;
  final String subtitle;
  final Function onTap;
  const MyListTile({Key key, this.drawable, this.title, this.subtitle, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        padding: EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        height: 95,
        decoration: CustomWidget.buildBoxConstrain(),
        child: Row(children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset("assets/$drawable").image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 14,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(title ?? '', style: TextStyle(fontSize: 16.0)),
                  Text(subtitle ?? '', style: TextStyle(fontSize: 13.0, color: Colors.black45)),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
