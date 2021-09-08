import 'package:flutter/material.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/common/widget/drop_down_field.dart';
import 'package:security_test/common/widget/text_form_field.dart';

class OTPTemplate extends StatefulWidget {
  final TextEditingController tec;
  final String authType;
  final String otpType;
  final Function handleAuthType;
  final Function handleOtpType;
  final Function handleRequestOTP;
  const OTPTemplate(
      {Key key,
      this.tec,
      this.authType,
      this.otpType,
      this.handleAuthType,
      this.handleOtpType,
      this.handleRequestOTP})
      : super(key: key);

  @override
  _OTPTemplateState createState() => _OTPTemplateState();
}

class _OTPTemplateState extends State<OTPTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
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
                  initialValue: widget.authType,
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
                  onChanged: widget.handleAuthType,
                ),
                Visibility(
                  visible: widget.authType == "otp",
                  child: Row(
                    children: [
                      CustomWidget.generalRadioButton(
                        title: "SMS",
                        value: "sms",
                        groupValue: widget.otpType,
                        onChange: widget.handleOtpType,
                      ),
                      CustomWidget.generalRadioButton(
                        title: "EMAIL",
                        value: "email",
                        groupValue: widget.otpType,
                        onChange: widget.handleOtpType,
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
                        info: widget.authType == "token" ? "Authenticate Code" : "OTP",
                        isRequired: true,
                        isUnderline: true,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: () => FocusScope.of(context).nextFocus(),
                        onSaved: (value) => {},
                        prefixIcon: widget.authType != "otp"
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
                      visible: widget.authType == "otp",
                      child: CustomWidget.generalButton(
                        context,
                        title: "REQUEST OTP",
                        border: BorderRadius.circular(8),
                        onPress: widget.handleRequestOTP,
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
