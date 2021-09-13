import 'package:flutter/material.dart';
import 'package:security_test/common/utils/format_utils.dart';

class AccountSummaryScreen extends StatefulWidget {
  const AccountSummaryScreen({Key key}) : super(key: key);

  @override
  _AccountSummaryScreenState createState() => _AccountSummaryScreenState();
}

class _AccountSummaryScreenState extends State<AccountSummaryScreen> {
  var acc13 = FormatUtils.formatCASAAccountNumber('8123456789012');
  var acc14 = FormatUtils.formatCASAAccountNumber('81234567890123');
  var acc15 = FormatUtils.formatCASAAccountNumber('812345678901234');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(acc13),
          Text(acc14),
          Text(acc15),
        ],
      ),
    );
  }
}
