import 'package:flutter/material.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/common/widget/drop_down_field.dart';
import 'package:security_test/common/widget/text_form_field.dart';

class OTPTemplate extends StatefulWidget {
  final TextEditingController tec;
  const OTPTemplate({Key key, this.tec}) : super(key: key);

  @override
  _OTPTemplateState createState() => _OTPTemplateState();
}

class _OTPTemplateState extends State<OTPTemplate> {
  String _authType;
  String _otpType;

  @override
  void initState() {
    _authType = "token";
    _otpType = "sms";
    super.initState();
  }

  void handleAuthType(String value) {
    setState(() => _authType = value);
  }

  void handleOtpType(String value) {
    setState(() => _otpType = value);
  }

  void handleRequestOTP() {
    print('AUTH TYPE : $_authType, OTP TYPE: $_otpType');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: CustomWidget.buildBoxConstrain(),
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
                  onChanged: handleAuthType,
                ),
                Visibility(
                  visible: _authType == "otp",
                  child: Row(
                    children: [
                      CustomWidget.generalRadioButton(
                        title: "SMS",
                        value: "sms",
                        groupValue: _otpType,
                        onChange: handleOtpType,
                      ),
                      CustomWidget.generalRadioButton(
                        title: "EMAIL",
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
                        controller: widget.tec,
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
                      child: CustomWidget.generalButton(
                        context,
                        title: "REQUEST OTP",
                        border: BorderRadius.circular(8),
                        onPress: () => handleRequestOTP(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
