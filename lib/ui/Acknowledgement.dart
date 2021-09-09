import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/month_model.dart';

class Acknowledgement extends StatefulWidget {
  const Acknowledgement({Key key}) : super(key: key);

  @override
  _AcknowledgementState createState() => _AcknowledgementState();
}

class _AcknowledgementState extends BaseStateful<Acknowledgement> {
  List<GeneralModel> test = [
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
  ];

  @override
  String getAppTitle() => "One Time Transfer";

  @override
  String getAppSubtitle() => "Step 3 of 3";

  @override
  List<Widget> getAction() => null;

  @override
  Widget getDrawer() => null;

  @override
  Widget getFloatingActionButton() => null;

  @override
  Widget getBottomNavigation() => Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        child: CustomWidget.generalButton(
          context,
          title: 'MAKE ANOTHER TRANSFER',
          onPress: () {},
        ),
      );

  @override
  Widget getChildView() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
                "ACKNOWLEDGEMENT",
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
                    status: value.status,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
