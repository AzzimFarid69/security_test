import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/month_model.dart';

class Acknowledgement extends StatefulWidget {
  final List<GeneralModel> model;
  const Acknowledgement({Key key, this.model}) : super(key: key);

  @override
  _AcknowledgementState createState() => _AcknowledgementState();
}

class _AcknowledgementState extends BaseStateful<Acknowledgement> {
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
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: CustomWidget.generalButton(
          context,
          title: 'MAKE ANOTHER TRANSFER',
          onPress: () {},
        ),
      );

  @override
  Widget getChildView() {
    return Padding(
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
                "ACKNOWLEDGEMENT",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.model != null && widget.model.isNotEmpty
                          ? widget.model.asMap().entries.map((entry) {
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
                            }).toList()
                          : Container(),
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
