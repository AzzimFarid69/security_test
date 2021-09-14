import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/common/utils/format_utils.dart';
import 'package:security_test/models/accounts_model.dart';

class AccountSummaryScreen extends StatefulWidget {
  const AccountSummaryScreen({Key key}) : super(key: key);

  @override
  _AccountSummaryScreenState createState() => _AccountSummaryScreenState();
}

class _AccountSummaryScreenState extends State<AccountSummaryScreen> {
  var acc13 = FormatUtils.formatCASAAccountNumber('8123456789012');
  var acc14 = FormatUtils.formatCASAAccountNumber('81234567890123');
  var acc15 = FormatUtils.formatCASAAccountNumber('812345678901234');
  List<SavingsAccountModel> savingsAccountModel;
  List<LoanAccountModel> loanAccountModel;
  final oCcy = new NumberFormat('#,##0.00', 'en_US');
  var dateFormatter = DateFormat(Constants.FORMAT_DATETIME);
  var dateString = DateTime.now();

  @override
  void initState() {
    savingsAccountModel = Constants.getSavings();
    loanAccountModel = Constants.getLoans();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: ExpansionTile(
                key: UniqueKey(),
                title: Text(
                  'Savings Account',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                children: [
                  ListView.separated(
                    separatorBuilder: (context, index) => Container(
                      color: Colors.white,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: savingsAccountModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildSavingsAccount(savingsAccountModel[index]);
                    },
                  )
                ],
              ),
            ),
            Card(
              child: ExpansionTile(
                key: UniqueKey(),
                title: Text(
                  'Loan Account',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                children: [
                  ListView.separated(
                    separatorBuilder: (context, index) => Container(
                      color: Colors.white,
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: loanAccountModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildLoanAccount(loanAccountModel[index]);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSavingsAccount(SavingsAccountModel item) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(FormatUtils.formatCASAAccountNumber(item.accountNum)),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Account Balance'),
                  Text(
                      '${Constants.DEFAULT_CURRENCY} ${FormatUtils.formatter(item.accountBalance)}')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Available Balance'),
                Text(
                    '${Constants.DEFAULT_CURRENCY} ${FormatUtils.formatter(item.availableBalance)}'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date'),
                Text(dateFormatter.format(dateString)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoanAccount(LoanAccountModel item) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child:
                  Text(FormatUtils.formatFDLoanAccountNumber(item.accountNum)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Account Balance'),
                Text(
                    '${Constants.DEFAULT_CURRENCY} ${FormatUtils.formatter(item.balance)}')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
