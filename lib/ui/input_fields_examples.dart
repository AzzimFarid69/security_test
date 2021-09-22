import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/common/widget/text_form_field.dart';
import 'package:validators/validators.dart' as validator;

class InputFieldsScreen extends StatefulWidget {
  const InputFieldsScreen({Key key}) : super(key: key);

  @override
  _InputFieldsScreenState createState() => _InputFieldsScreenState();
}

class _InputFieldsScreenState extends BaseStateful<InputFieldsScreen> {
  MyTextFormField clearableTF,
      passwordTF,
      amountTF,
      nonCopyPasteTF,
      minLengthTF,
      maxLengthTF,
      acceptableCharacterTF,
      regexValidationTF;
  @override
  String getAppTitle() => "Input Fields Examples";

  @override
  String getAppSubtitle() => null;

  @override
  List<Widget> getAction() => null;

  @override
  Widget getDrawer() => null;

  @override
  Widget getFloatingActionButton() => null;

  @override
  Widget getBottomNavigation() => null;

  @override
  void initState() {
    super.initState();
    initInputFields(context);
  }

  void initInputFields(BuildContext context) {
    clearableTF = MyTextFormField(
      isRequired: true,
      labelText: 'Clearable Text',
      hintText: 'someone@email.com',
      isClearable: true,
      isEmail: true,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
      enableInteractiveSelection: false,
      validator: (value) {
        if (value != null && value.isEmpty) {
          return "Email cannot be empty";
        }
        if (value != null && value.isNotEmpty && !validator.isEmail(value)) {
          return "Please enter a valid email";
        }
        return null;
      },
    );

    passwordTF = MyTextFormField(
      isRequired: true,
      labelText: 'Toggle Show Password',
      hintText: 'Your password',
      isPassword: true,
      isPasswordToggle: true,
      validator: (value) {
        if (value != null && value.length < 6) {
          return "Enter a password with 6+ character long";
        }
        return null;
      },
    );

    amountTF = MyTextFormField(
      labelText: 'Amount Fields',
      hintText: 'Only numeric',
      isNumeric: true,
      validator: (value) {
        return null;
      },
    );

    nonCopyPasteTF = MyTextFormField(
      labelText: 'Non Copy Paste Fields',
      hintText: 'Try to copy or paste',
      enableInteractiveSelection: false,
      validator: (value) {
        return null;
      },
    );

    minLengthTF = MyTextFormField(
      labelText: 'Minimum Length Fields',
      hintText: '3 minimum character',
      validator: (value) {
        if (value != null && value.length < 3) {
          return "Enter a text with 3+ character long";
        }
        return null;
      },
    );

    maxLengthTF = MyTextFormField(
      labelText: 'Maximum Length Fields',
      hintText: '9 maximum character',
      maxLength: 9,
      validator: (value) {
        return null;
      },
    );

    acceptableCharacterTF = MyTextFormField(
      labelText: 'Acceptable Character Fields',
      hintText: 'No numbers',
      allowSpacing: true,
      validator: (value) {
        final validCharacters = RegExp('[0-9.]');
        if (validCharacters.hasMatch(value)) {
          return 'Only Character';
        }
        return null;
      },
    );

    regexValidationTF = MyTextFormField(
      labelText: 'Regex Validation',
      hintText: 'regex [a-zA-Z0-9,-.@_]',
      validator: (value) {
        return null;
      },
    );
  }

  @override
  Widget getChildView() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: CustomWidget.buildBoxConstrain(),
        child: Column(
          children: [
            Container(
              color: Theme.of(context).accentColor,
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              child: Text(
                "EXAMPLES",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        clearableTF ?? Container(),
                        passwordTF ?? Container(),
                        amountTF ?? Container(),
                        nonCopyPasteTF ?? Container(),
                        acceptableCharacterTF ?? Container(),
                        regexValidationTF ?? Container(),
                        minLengthTF ?? Container(),
                        maxLengthTF ?? Container(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
