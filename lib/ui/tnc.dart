import 'package:flutter/material.dart';

class TncScreen extends StatefulWidget {
  const TncScreen({Key key}) : super(key: key);

  @override
  _TncScreenState createState() => _TncScreenState();
}

class _TncScreenState extends State<TncScreen> {
  bool tnc = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        child: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.white,
                  child: Align(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('Custom Text'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.0,
                            bottom: 15.0,
                          ),
                          child: Align(
                            child: Text(
                              'People\'s Bank Mobile Banking\n Terms and Condition',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('Content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: this.tnc,
                              onChanged: (bool value) {
                                setState(() {
                                  this.tnc = value;
                                });
                              },
                            ),
                            Text(
                              'I have read and accept the Terms and Conditions',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red[900],
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical: 15,
                                      ),
                                    ),
                                    child: Text('Cancel'),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    if (!tnc) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return WillPopScope(
                                              child: AlertDialog(
                                                title: Text(
                                                    'Terms and Conditions'),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8.0),
                                                  ),
                                                ),
                                                backgroundColor: Colors.white,
                                                content: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Please agree to the terms and conditions',
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              onWillPop: () async => false);
                                        },
                                      );
                                    } else {
                                      Navigator.of(context).pop();
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red[900],
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 50,
                                      vertical: 15,
                                    ),
                                  ),
                                  child: Text('Continue'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
