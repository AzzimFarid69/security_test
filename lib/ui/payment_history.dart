import 'package:flutter/material.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/models/payment_history_model.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({Key key}) : super(key: key);

  @override
  _PaymentHistoryState createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  List<PaymentHistoryModel> paymentHistoryModel;

  @override
  void initState() {
    paymentHistoryModel = Constants.getPayHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return _buildList(paymentHistoryModel[index]);
      },
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,
      ),
      itemCount: paymentHistoryModel.length,
    );
  }

  Widget _buildList(PaymentHistoryModel items) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            items.date,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Bill No: ${items.billNo}',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            'Reference No: ${items.refNo}',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'LKR ${items.amount}',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                items.status == '1' ? 'SUCCESS' : 'FAILED',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Text(
            items.type,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
