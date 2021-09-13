import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DialogInfo {
  final BuildContext context;

  DialogInfo(this.context);

  void showInfo(String textVal, String iconType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          child: AlertDialog(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    iconTypes(iconType),
                    color: colorType(iconType),
                  ),
                ),
                Text('Info'),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            backgroundColor: Colors.white,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(textVal.isEmpty ? 'Info' : textVal),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          ),
          onWillPop: () async => true,
        );
      },
    );
  }

  IconData iconTypes(String iconType) {
    switch (iconType) {
      case 'error':
        return Icons.error;
      case 'warning':
        return Icons.info;
      default:
        return Icons.home;
    }
  }

  Color colorType(String colorType) {
    switch (colorType) {
      case 'error':
        return Colors.red;
      case 'warning':
        return Colors.yellow;
      default:
        return Colors.red;
    }
  }
}
