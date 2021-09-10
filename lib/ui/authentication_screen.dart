import 'package:flutter/material.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:security_test/common/api/user_secure_storage.dart';
import 'package:security_test/common/utils/tab_item.dart';
import 'package:security_test/common/widget/text_form_field.dart';
import 'package:validators/validators.dart' as validator;

class AuthenticationScreen extends StatefulWidget {
  final Function onInit;
  final Function selectedTab;
  const AuthenticationScreen({Key key, this.onInit, this.selectedTab})
      : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String error = '';
  bool _isPassword = true;
  bool loading = false;
  bool isAuth = false;

  void toggleShowPassword() {
    setState(() {
      _isPassword = !_isPassword;
    });
  }

  void onSignIn() async {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }

    if (_formKey.currentState != null && _formKey.currentState.validate()) {
      setState(() {
        loading = true;
      });
      _formKey.currentState?.save();
      await UserSecureStorage.setUserCredentials(
          emailController.text, passwordController.text);
      setState(() {
        loading = false;
      });
      if (widget.onInit != null) widget.onInit();
      if (widget.selectedTab != null)
        widget.selectedTab(TabItem.expansion, isChangeTab: true, hasUser: true);
    }
  }

  void _checkBiometric() async {
    final LocalAuthentication auth = LocalAuthentication();
    bool canCheckBiometrics = false;
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } catch (e) {
      print('error biometrics $e');
    }

    print('biometrics is available: $canCheckBiometrics');

    // enumerate biometric technologies
    List<BiometricType> availableBiometrics;
    BiometricType bio = BiometricType.fingerprint;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
      print('Biometrics ll: $bio');
    } catch (e) {
      print("error enumerate biometrics $e");
    }

    print("following biometrics are available");
    if (availableBiometrics.isNotEmpty) {
      availableBiometrics.forEach((ab) {
        print("tech: $ab");
      });
    } else {
      print("no biometrics are available");
    }

    // authenticate with biometrics
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Touch your finger on the sensor to login',
        useErrorDialogs: true,
        stickyAuth: false,
        androidAuthStrings:
            AndroidAuthMessages(signInTitle: "Login to HomePage"),
      );
      print('Authenticated: $authenticated');
    } catch (e) {
      print("error using biometric auth: $e");
    }
    setState(() {
      isAuth = authenticated ? true : false;
    });

    if (isAuth) {
      setState(() {
        loading = true;
      });
      _formKey.currentState?.save();
      await UserSecureStorage.setUserCredentials('123@123.com', '123456');
      setState(() {
        loading = false;
      });
      if (widget.onInit != null) widget.onInit();
      if (widget.selectedTab != null)
        widget.selectedTab(TabItem.expansion, isChangeTab: true, hasUser: true);
    }

    print("authenticated: $authenticated");
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? CircularProgressIndicator()
        : Padding(
            padding: EdgeInsets.all(20.0),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 5),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text(
                              'Welcome to Security Demo',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Key in any random email or password for testing',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      MyTextFormField(
                        controller: emailController,
                        info: 'Email',
                        hintText: 'someone@email.com',
                        isEmail: true,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus(),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Email cannot be empty";
                          }
                          if (value != null &&
                              value.isNotEmpty &&
                              !validator.isEmail(value)) {
                            return "Please enter a valid email";
                          }
                          return null;
                        },
                        suffixIcon: emailController.text.isNotEmpty
                            ? IconButton(
                                onPressed: () {
                                  emailController.clear();
                                },
                                icon: Icon(
                                  Icons.clear,
                                  size: 20,
                                ),
                              )
                            : null,
                      ),
                      MyTextFormField(
                        controller: passwordController,
                        info: 'Password',
                        hintText: 'Your password',
                        isPassword: _isPassword,
                        validator: (value) {
                          if (value != null && value.length < 6) {
                            return "Enter a password with 6+ character long";
                          }
                          return null;
                        },
                        suffixIcon: IconButton(
                          onPressed: () => toggleShowPassword(),
                          icon: Icon(_isPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            _checkBiometric();
                          },
                          child: Text('Login with biometrics'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).accentColor),
                          onPressed: () {
                            onSignIn();
                          },
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      error.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                error,
                                style: TextStyle(
                                    color: Colors.red, fontSize: 14.0),
                                textAlign: TextAlign.center,
                              ),
                            )
                          : SizedBox(height: 0.0),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "Don't have an account yet? ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).accentColor),
                          onPressed: () {},
                          child: Text(
                            'Click here to Register',
                            style: TextStyle(fontSize: 13.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
