import 'package:flutter/material.dart';

class AccountBalance {
  final BuildContext context;

  AccountBalance(this.context);

  void showAccountDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
            child: AlertDialog(
              title: Text('Account Balance'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              backgroundColor: Colors.white,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text('Account Number: '),
                        Text('12345678'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text('Current Balance: '),
                        Text('Rs 1,000'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text('Account Type: '),
                        Text('Savings'),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Ok'),
                ),
              ],
            ),
            onWillPop: () async => true);
      },
    );
  }
}
