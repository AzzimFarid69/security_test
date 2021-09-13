import 'package:flutter/material.dart';

class CustomDropDown<T> extends StatefulWidget {
  CustomDropDown(this.items);
  final List<String> items;

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String dropdownvalue = 'Apple';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownvalue,
      icon: Icon(Icons.keyboard_arrow_down),
      items: widget.items.map(
        (String items) {
          return DropdownMenuItem(
            child: Text(items),
            value: items,
          );
        },
      ).toList(),
      onChanged: (String newValue) {
        setState(() {
          dropdownvalue = newValue;
        });
      },
    );
  }
}
