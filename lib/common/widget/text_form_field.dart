import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String info;
  final String initialValue;
  final String hintText;
  final String Function(String) validator;
  final Function(String) onSaved;
  final Function onChange;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;
  final bool isNumeric;
  final bool isRequired;
  final bool isMultiLine;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onFieldSubmitted;
  final TextInputAction textInputAction;
  final bool isUnderline;

  const MyTextFormField({
    Key key,
    this.controller,
    this.info,
    this.initialValue,
    this.hintText,
    this.validator,
    this.onSaved,
    this.onChange,
    this.suffixIcon,
    this.prefixIcon,
    this.isPassword = false,
    this.isEmail = false,
    this.isPhone = false,
    this.isNumeric = false,
    this.isRequired = false,
    this.isMultiLine = false,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.textInputAction,
    this.isUnderline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: info != null,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
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
            ),
            TextFormField(
              controller: controller,
              initialValue: initialValue != null && controller == null ? initialValue : null,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: hintText,
                contentPadding: EdgeInsets.all(15.0),
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                filled: !isUnderline,
                fillColor: !isUnderline ? Colors.grey[200] : null,
                border: isUnderline
                    ? UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black45, width: 2.0),
                      )
                    : InputBorder.none,
                focusedBorder: isUnderline
                    ? UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green, width: 2.0),
                      )
                    : null,
              ),
              obscureText: isPassword,
              validator: validator,
              onSaved: onSaved,
              onChanged: onChange,
              keyboardType: isMultiLine
                  ? TextInputType.multiline
                  : isPhone
                      ? TextInputType.phone
                      : isNumeric
                          ? TextInputType.number
                          : isEmail
                              ? TextInputType.emailAddress
                              : TextInputType.text,
              maxLines: isMultiLine && !isPassword ? null : 1,
              minLines: isMultiLine ? 3 : null,
              textInputAction: textInputAction,
              onEditingComplete: onEditingComplete,
              onFieldSubmitted: onFieldSubmitted,
            ),
          ],
        ),
      ),
    );
  }
}
