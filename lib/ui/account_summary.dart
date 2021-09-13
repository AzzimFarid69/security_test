import 'package:flutter/material.dart';
import 'package:security_test/common/utils/format_utils.dart';

class AccountSummaryScreen extends StatefulWidget {
  const AccountSummaryScreen({Key key}) : super(key: key);

  @override
  _AccountSummaryScreenState createState() => _AccountSummaryScreenState();
}

class _AccountSummaryScreenState extends State<AccountSummaryScreen> {
  var acc = FormatUtils.formatCASAAccountNumber('1313131313132');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            acc,
          ),
        ],
      ),
    );
  }
}
