import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:security_test/common/utils/utils.dart';

class MyTextFormField extends StatefulWidget {
  TextEditingController controller;
  final String labelText;
  final String initialValue;
  final String hintText;
  final String Function(String) validator;
  final Function(String) onSaved;
  final Function(String) onChange;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;
  final bool isNumeric;
  final bool isRequired;
  final bool isMultiLine;
  final bool isCurrency;
  final bool allCaps;
  final bool isClearable;
  final bool isFDRemark;
  final bool isPasswordToggle;
  final bool allowSpacing;
  final bool enableInteractiveSelection;
  final int maxLength;
  final VoidCallback onEditingComplete;
  final ValueChanged<String> onFieldSubmitted;
  final TextInputAction textInputAction;
  final bool isUnderline;

  MyTextFormField({
    Key key,
    this.controller,
    this.labelText,
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
    this.isCurrency = false,
    this.allCaps = false,
    this.isClearable = false,
    this.isFDRemark = false,
    this.isPasswordToggle = false,
    this.allowSpacing = false,
    this.enableInteractiveSelection = true,
    this.maxLength,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.textInputAction,
    this.isUnderline = true,
  }) : super(key: key);

  set text(String text) {
    if (controller != null) {
      controller.text = text;
    }
  }

  String get text {
    if (controller != null) {
      if (isNumeric && isCurrency)
        return controller.text.replaceAll(",", "");
      else
        return controller.text;
    } else {
      return "";
    }
  }

  void clearText() {
    controller?.clear();
  }

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState(controller, isPassword);
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  TextEditingController _controller;
  bool _isPassword;
  _MyTextFormFieldState(this._controller, this._isPassword);

  Future<Null> onTextChanged(String text) async {
    setState(() {
      if (widget.allCaps) {
        if (widget.controller != null) {
          widget.controller.value = TextEditingValue(
            text: _controller.text.toUpperCase(),
            selection: widget.controller.selection,
          );
        }
      }

      if (widget.isNumeric && widget.isCurrency) {
        if (_controller != null && _controller.text.isNotEmpty) {
          String result = _controller.text.currencyFormat;
          widget.controller.value = TextEditingValue(
            text: result,
            selection: TextSelection.fromPosition(TextPosition(offset: result.length)),
          );
        }
      }
    });

    if (widget.onChange != null) {
      widget.onChange(text);
    }
  }

  void toggleShowPassword() {
    setState(() {
      _isPassword = !_isPassword;
    });
  }

  @override
  void initState() {
    super.initState();
    _isPassword = widget.isPassword ?? false;
    widget.controller = widget.controller ?? new TextEditingController();
    _controller = widget.controller ?? new TextEditingController();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String regExp = "[a-zA-Z0-9,-.@_ ]";

    if (widget.isNumeric) {
      if (widget.allowSpacing) {
        regExp = "[0-9. ]";
      } else {
        regExp = "[0-9.]";
      }
    } else if (widget.isFDRemark) {
      regExp = "[a-zA-Z0-9,-.@ ]";
    } else {
      if (widget.allowSpacing) {
        regExp = "[a-zA-Z0-9,-.@_ ]";
      } else {
        regExp = "[a-zA-Z0-9,-.@_]";
      }
    }

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: widget.labelText != null,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  children: [
                    Text(widget.labelText ?? '', style: TextStyle(fontSize: 12)),
                    SizedBox(width: 4),
                    Text(
                      widget.isRequired ? "*" : "",
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            TextFormField(
              controller: widget.controller,
              initialValue: widget.initialValue != null && widget.controller == null
                  ? widget.initialValue
                  : null,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              enableInteractiveSelection: widget.enableInteractiveSelection,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(regExp))],
              decoration: InputDecoration(
                hintText: widget.hintText,
                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
                suffixIcon: widget.isClearable &&
                        widget.controller != null &&
                        widget.controller.text.isNotEmpty
                    ? IconButton(
                        onPressed: () => widget.controller?.clear(),
                        icon: Icon(Icons.clear, size: 20),
                      )
                    : widget.isPasswordToggle
                        ? IconButton(
                            onPressed: () => toggleShowPassword(),
                            icon: Icon(_isPassword ? Icons.visibility : Icons.visibility_off),
                          )
                        : widget.suffixIcon,
                prefixIcon: widget.prefixIcon,
                filled: !widget.isUnderline,
                fillColor: !widget.isUnderline ? Colors.grey[200] : null,
                border: widget.isUnderline
                    ? UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black45, width: 2.0),
                      )
                    : InputBorder.none,
                focusedBorder: widget.isUnderline
                    ? UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green, width: 2.0),
                      )
                    : null,
              ),
              cursorColor: Colors.green,
              obscureText: _isPassword,
              validator: widget.validator,
              onSaved: widget.onSaved,
              onChanged: onTextChanged,
              keyboardType: widget.isMultiLine
                  ? TextInputType.multiline
                  : widget.isPhone
                      ? TextInputType.phone
                      : widget.isNumeric
                          ? TextInputType.number
                          : widget.isEmail
                              ? TextInputType.emailAddress
                              : TextInputType.text,
              maxLines: widget.isMultiLine && _isPassword == false ? null : 1,
              minLines: widget.isMultiLine ? 3 : null,
              maxLength: widget.maxLength,
              textInputAction: widget.textInputAction,
              onEditingComplete: widget.onEditingComplete,
              onFieldSubmitted: widget.onFieldSubmitted,
            ),
          ],
        ),
      ),
    );
  }
}
