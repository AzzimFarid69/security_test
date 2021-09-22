import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/utils/route_generator.dart';
import 'package:security_test/common/widget/custom_dialog.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/month_model.dart';

import 'OTP.dart';

class OneTimeTransfer extends StatefulWidget {
  const OneTimeTransfer({Key key}) : super(key: key);

  @override
  _OneTimeTransferState createState() => _OneTimeTransferState();
}

class _OneTimeTransferState extends BaseStateful<OneTimeTransfer> {
  TextEditingController _tec = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  String getAppTitle() => "One Time Transfer";

  @override
  String getAppSubtitle() => 'Step 2 of 3';

  @override
  List<Widget> getAction() => null;

  @override
  Widget getDrawer() => null;

  @override
  Widget getFloatingActionButton() => null;

  @override
  Widget getBottomNavigation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: CustomWidget.generalButton(
        context,
        title: 'CONFIRM',
        onPress: () => onConfirmClick(),
      ),
    );
  }

  var test = [
    GeneralModel(name: 'Status', description: 'Task Submission Successfull', status: "success"),
    GeneralModel(name: 'Reference Number', description: '2109070025398555'),
    GeneralModel(name: 'From Account', description: 'LKR 004-1-001-10210297 CA 1'),
    GeneralModel(name: 'Payment Option', description: 'LANKAPAY ONLINE'),
    GeneralModel(name: 'Beneficiary Account Bank', description: '6463 - Amana Bank PLC'),
    GeneralModel(name: 'Beneficiary Account Branch', description: '00015 - Akkaraipattu'),
    GeneralModel(name: 'Beneficiary Account Number', description: '1234567890123456'),
    GeneralModel(name: 'Beneficiary Account Name', description: 'TESTER'),
    GeneralModel(name: 'Email Address', description: 'test@gmail.com'),
    GeneralModel(name: 'Beneficiary Mobile Number', description: '+94717973906'),
    GeneralModel(name: 'Fee And Charges', description: 'LKR 100.00', isBool: true, feesAndCharges: [
      FeesAndCharges(item: "Lankapay - Online", value: 50),
      FeesAndCharges(item: "Something else - Online", value: 50),
    ]),
    GeneralModel(name: 'Debit Amount', description: 'LKR 500.00'),
    GeneralModel(name: 'Total Debit Amount', description: 'LKR 600.00'),
    GeneralModel(name: 'Transfer On', description: '07-09-2021'),
    GeneralModel(name: 'Transfer Description', description: 'test screen'),
  ];

  void onListClick(int index) {
    if (test[index].isBool == true) {
      CustomDialog.feesAndCharges(context,
          title: test[index].name, generalList: test[index].feesAndCharges);
    }
    print(test[index].toString());
  }

  void onConfirmClick() {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }

    if (_formKey.currentState != null && _formKey.currentState.validate()) {
      _formKey.currentState?.save();
      Navigator.pushReplacementNamed(context, Routes.acknowledge,
          arguments: CommonArgument(generalModel: test));
    }
  }

  @override
  Widget getChildView() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Container(
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
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
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
                              status: value.status,
                              onTap: onListClick,
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 10.0),
                        OTPTemplate(tec: _tec, formKey: _formKey),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
