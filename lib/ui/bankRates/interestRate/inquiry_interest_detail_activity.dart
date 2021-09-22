import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateless.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/OBInteresRate_Resp.dart';

class InquiryInterestRateDetailActivity extends BaseStateless {
  final String title;
  final List<ObFixedDepositRate> obFixedDepositRateDetails;
  const InquiryInterestRateDetailActivity({
    Key key,
    this.title,
    this.obFixedDepositRateDetails,
  }) : super(key: key);

  @override
  String getAppTitle() => "Fixed Deposit Interest Rates";

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
            Container(
              color: Theme.of(context).accentColor,
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              child: Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
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
                        'Period',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                    Column(children: [
                      Text(
                        'Interest(%)',
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
                      children: obFixedDepositRateDetails
                          .map((e) => TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(children: [Text(e.currency ?? '')]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(children: [
                                    Text(
                                        "${e.tenure} ${int.parse(e.tenure) < 2 ? 'Month' : 'Months'}" ??
                                            '')
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(children: [Text(e.rate.toString() ?? '')]),
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
