import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateless.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/OBForexRate_Resp.dart';

class InquiryExchangeRateActivity extends BaseStateless {
  final List<OBForexRateData> forexRateList;
  const InquiryExchangeRateActivity({
    Key key,
    this.forexRateList,
  }) : super(key: key);

  @override
  String getAppTitle() => "Currency Exchange Rate";

  @override
  String getAppSubtitle() => null;

  @override
  List<Widget> getAction() => null;

  @override
  Widget getFloatingActionButton() => null;

  @override
  Widget getBottomNavigation() => null;

  @override
  Widget getChildView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: CustomWidget.buildBoxConstrain(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Table(
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text(
                        'Currency',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    Column(children: [
                      Text(
                        'Buying Rate',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    Column(children: [
                      Text(
                        'Selling Rate',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                  ])
                ],
              ),
            ),
            SizedBox(
              height: 3,
              child: Container(
                color: Theme.of(context).accentColor,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Table(
                      border: TableBorder(
                          bottom: BorderSide(color: Colors.black45),
                          horizontalInside: BorderSide(color: Colors.black45)),
                      children: forexRateList
                          .map((e) => TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(children: [Text(e.currency ?? '')]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(children: [Text(e.buyingTT.toString() ?? '')]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(children: [Text(e.sellingTT.toString() ?? '')]),
                                ),
                              ]))
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
