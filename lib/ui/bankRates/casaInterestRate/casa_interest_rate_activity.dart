import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateless.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/OBInteresRate_Resp.dart';

class CASAInterestRateActivity extends BaseStateless {
  final List<ProductDetailsDTO> productDetails;
  const CASAInterestRateActivity({
    Key key,
    this.productDetails,
  }) : super(key: key);

  @override
  String getAppTitle() => "Saving Interest Rates";

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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Applicable Rate (%)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
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
                      children: productDetails
                          .map((e) => TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 15.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Text(e.productName ?? '')],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(children: [Text(e.interestRate ?? '')]),
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
