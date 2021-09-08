import 'package:flutter/material.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/month_model.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  var test = [
    GeneralModel(name: 'Fee & Charges', description: 'LKR 50.00', isBool: true),
    GeneralModel(name: 'Debit Amount', description: 'LKR 500.00'),
    GeneralModel(name: 'Total Debit Amount', description: 'LKR 550.00'),
    GeneralModel(name: 'Transfer On', description: '07-09-2021'),
    GeneralModel(name: 'Transfer Description', description: 'test screen'),
  ];

  void onListClick(int index) {
    print(test[index].toString());
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
              "CONFIRMATION",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: test.asMap().entries.map((entry) {
                int idx = entry.key;
                GeneralModel value = entry.value;
                return CustomWidget.generalListView(
                  context,
                  index: idx,
                  title: value.name,
                  description: value.description,
                  isInfo: value.isBool,
                  onTap: onListClick,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
