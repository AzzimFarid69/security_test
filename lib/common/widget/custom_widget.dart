import 'package:flutter/material.dart';

class CustomWidget {
  static generalButton(BuildContext context,
      {Function onPress, String title, double width, double fontSize, BorderRadius border}) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(borderRadius: border ?? BorderRadius.zero),
      ),
      onPressed: () => onPress(),
      child: Container(
        width: width,
        child: Text(
          title ?? '',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static generalRadioButton({String title, String value, String groupValue, Function onChange}) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Row(
        children: [
          Radio(value: value, groupValue: groupValue, onChanged: (value) => onChange(value)),
          Text(title ?? ""),
        ],
      ),
    );
  }

  static BoxDecoration buildBoxConstrain({Color color}) {
    return BoxDecoration(
      color: color ?? Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ],
    );
  }
}
