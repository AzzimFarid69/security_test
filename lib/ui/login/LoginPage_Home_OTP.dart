import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/ui/login/OTP.dart';

class LoginPageOTP extends StatefulWidget {
  const LoginPageOTP({Key key}) : super(key: key);

  @override
  _LoginPageOTPState createState() => _LoginPageOTPState();
}

class _LoginPageOTPState extends BaseStateful<LoginPageOTP> {
  String _authType;
  String _otpType;
  TextEditingController _tec = TextEditingController();
  @override
  void initState() {
    _authType = "token";
    _otpType = "sms";
    super.initState();
  }

  @override
  String getAppTitle() => "Login";

  @override
  List<Widget> getAction() => null;

  @override
  Widget getDrawer() => null;

  @override
  Widget getFloatingActionButton() => null;

  @override
  Widget getBottomNavigation() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomWidget.generalButton(
            context,
            title: 'CANCEL',
            onPress: () {},
            fontSize: 18,
            width: MediaQuery.of(context).size.width / 3,
          ),
          CustomWidget.generalButton(
            context,
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
    return OTPTemplate(
      tec: _tec,
      authType: _authType,
      otpType: _otpType,
      handleAuthType: handleAuthType,
      handleOtpType: handleOtpType,
      handleRequestOTP: handleRequestOTP,
    );
  }

  void handleAuthType(String value) {
    setState(() => _authType = value);
  }

  void handleOtpType(String value) {
    setState(() => _otpType = value);
  }

  void handleRequestOTP() {
    print('AUTH TYPE : $_authType, OTP TYPE: $_otpType, code: ${_tec.text}');
  }
}
