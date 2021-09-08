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

  static Widget generalList(
    BuildContext context, {
    String title,
    double value,
  }) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title ?? '',
                style: TextStyle(color: Colors.black45, fontSize: 13.0),
              ),
              Text(value != null ? 'LKR $value' : ''),
            ],
          ),
        ],
      ),
    );
  }

  static Widget generalListView(
    BuildContext context, {
    int index,
    String title,
    String description,
    bool isInfo,
    Function onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title ?? '',
                  style: TextStyle(color: Colors.black45, fontSize: 13.0),
                ),
                Visibility(
                  visible: isInfo,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.info_outline,
                      color: Theme.of(context).accentColor,
                      size: 15.0,
                    ),
                  ),
                )
              ],
            ),
            Text(description ?? ''),
          ],
        ),
      ),
    );
  }
}
