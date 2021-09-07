import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/widget/drop_down_field.dart';
import 'package:security_test/common/widget/text_form_field.dart';

class LoginPageOTP extends StatefulWidget {
  const LoginPageOTP({Key key}) : super(key: key);

  @override
  _LoginPageOTPState createState() => _LoginPageOTPState();
}

class _LoginPageOTPState extends BaseStateful<LoginPageOTP> {
  String _authType;
  String _otpType;
  @override
  void initState() {
    _authType = "token";
    _otpType = "sms";
    super.initState();
  }

  @override
  List<Widget> getAction() => null;

  @override
  String getAppTitle() => "Login";

  @override
  Widget getBottomNavigation() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildButton(
            title: 'CANCEL',
            onPress: () {},
            fontSize: 18,
            width: MediaQuery.of(context).size.width / 3,
          ),
          buildButton(
            title: 'LOGIN',
            onPress: () {},
            fontSize: 18,
            width: MediaQuery.of(context).size.width / 3,
          ),
        ],
      ),
    );
  }

  @override
  Widget getChildView() {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height * 0.68,
      width: MediaQuery.of(context).size.width,
      decoration: buildBoxConstrain(),
      child: Container(
        margin: EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width,
        decoration: buildBoxConstrain(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Theme.of(context).accentColor,
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Two Factor Authentication",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  MyDropDownField(
                    info: "Authentication",
                    initialValue: _authType,
                    isRequired: true,
                    dropDownMenuItem: [
                      DropdownMenuItem(
                        child: Text('Software Token', overflow: TextOverflow.ellipsis),
                        value: 'token',
                      ),
                      DropdownMenuItem(
                        child: Text('OTP', overflow: TextOverflow.ellipsis),
                        value: 'otp',
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        _authType = value;
                      });
                    },
                  ),
                  Visibility(
                    visible: _authType == "otp",
                    child: Row(
                      children: [
                        buildRadioButton(
                          title: "SMS",
                          value: "sms",
                          groupValue: _otpType,
                          onChange: handleOtpType,
                        ),
                        buildRadioButton(
                          title: "Email",
                          value: "email",
                          groupValue: _otpType,
                          onChange: handleOtpType,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: MyTextFormField(
                          info: _authType == "token" ? "Authenticate Code" : "OTP",
                          isRequired: true,
                          isUnderline: true,
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => FocusScope.of(context).nextFocus(),
                          onSaved: (value) => {},
                          prefixIcon: _authType != "otp"
                              ? Icon(
                                  Icons.password,
                                  color: Theme.of(context).accentColor,
                                )
                              : null,
                          validator: (value) {
                            return null;
                          },
                        ),
                      ),
                      Visibility(
                        visible: _authType == "otp",
                        child: buildButton(
                          title: "REQUEST OTP",
                          border: BorderRadius.circular(8),
                          onPress: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleOtpType(String value) {
    setState(() {
      _otpType = value;
    });
    print(_otpType);
  }

  @override
  Widget getDrawer() => null;

  @override
  Widget getFloatingActionButton() => null;

  Widget buildButton(
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

  Widget buildRadioButton({String title, String value, String groupValue, Function onChange}) {
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

  BoxDecoration buildBoxConstrain({Color color}) {
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
