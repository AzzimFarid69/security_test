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
  List<CreditCardAccountModel> creditCardAccountModel;
  List<FdAccountModel> fdAccountModel;
  final oCcy = new NumberFormat('#,##0.00', 'en_US');
  var dateFormatter = DateFormat(Constants.FORMAT_DATETIME);
  var dateString = DateTime.now();

  @override
  void initState() {
    savingsAccountModel = Constants.getSavings();
    loanAccountModel = Constants.getLoans();
    creditCardAccountModel = Constants.getCreditAcc();
    fdAccountModel = Constants.getFdAcc();
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
            Card(
              child: ExpansionTile(
                key: UniqueKey(),
                title: Text(
                  'Credit Card Account',
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
                    itemCount: creditCardAccountModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildCcAccount(creditCardAccountModel[index]);
                    },
                  )
                ],
              ),
            ),
            Card(
              child: ExpansionTile(
                key: UniqueKey(),
                title: Text(
                  'Fixed Deposit Account',
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
                    itemCount: fdAccountModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildFdAccount(fdAccountModel[index]);
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
                Text('Date Time'),
                Text(FormatUtils.dateTimeFormat(dateString.toString())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Date'),
                Text(FormatUtils.dateFormat(dateString.toString())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Time'),
                Text(FormatUtils.timeFormat(dateString.toString())),
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

  Widget _buildCcAccount(CreditCardAccountModel item) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(FormatUtils.formatCCAccountNumber(item.accountNum)),
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

  Widget _buildFdAccount(FdAccountModel item) {
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
