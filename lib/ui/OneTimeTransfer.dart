import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/ui/Confirmation.dart';
import 'package:security_test/ui/OTP.dart';

class OneTimeTransfer extends StatefulWidget {
  const OneTimeTransfer({Key key}) : super(key: key);

  @override
  _OneTimeTransferState createState() => _OneTimeTransferState();
}

class _OneTimeTransferState extends BaseStateful<OneTimeTransfer> {
  TextEditingController _tec = TextEditingController();

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
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: CustomWidget.generalButton(
        context,
        title: 'CONFIRM',
        onPress: () {
          // Navigator.pushNamed(context, Routes.acknowledge);
          print('code: ${_tec.text}');
        },
      ),
    );
  }

  @override
  Widget getChildView() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Confirmation(),
          OTPTemplate(tec: _tec),
        ],
      ),
    );
  }
}
