import 'package:flutter/material.dart';

class MyDropDownField extends StatelessWidget {
  final String info;
  final String initialValue;
  final String hintText;
  final String Function(String) validator;
  final Function onChanged;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;
  final bool isNumeric;
  final bool isRequired;
  final bool isMultiLine;
  final List<DropdownMenuItem> dropDownMenuItem;

  const MyDropDownField({
    Key key,
    this.info,
    this.initialValue,
    this.hintText,
    this.validator,
    this.onChanged,
    this.isPassword = false,
    this.isEmail = false,
    this.isPhone = false,
    this.isNumeric = false,
    this.isRequired = false,
    this.isMultiLine = false,
    this.dropDownMenuItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: info != null,
              child: Row(
                children: [
                  Text(info ?? '', style: TextStyle(fontSize: 12)),
                  SizedBox(width: 4),
                  Text(
                    isRequired ? "*" : "",
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            DropdownButtonFormField(
              value: initialValue,
              items: dropDownMenuItem,
              isExpanded: true,
              autofocus: true,
              onChanged: (value) => onChanged(value),
              decoration: InputDecoration(
                hintText: hintText ?? '',
                contentPadding: EdgeInsets.all(15.0),
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
