import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateless.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/common/utils/route_generator.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:security_test/models/OBInteresRate_Resp.dart';

class InquiryInterestRateActivity extends BaseStateless {
  final List<InterestRateProductDetailDTO> productCategoryList;
  const InquiryInterestRateActivity({
    Key key,
    this.productCategoryList,
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

  List<ObFixedDepositRate> getDetails(String code) {
    switch (code) {
      case '1':
        return Constants.retrieveNormalFixedDepositRate();
      case '2':
        return Constants.retrieveNormalMonthlyFixedDepositRate();
      case '3':
        return Constants.retrieveForeignExchangeFixed();
      case '4':
        return Constants.retrieveNonResidentFixed();
      case '5':
        return Constants.retrieveForeignResidentFixed();
      default:
        return null;
    }
  }

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
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Fixed Deposit Products',
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 3,
              child: Container(
                color: Theme.of(context).accentColor,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: productCategoryList
                      .map((e) => Column(
                            children: [
                              ListTile(
                                  onTap: () => Navigator.pushNamed(
                                        context,
                                        Routes.fixedDepositDetails,
                                        arguments: CommonArgument(
                                          title: e.name,
                                          obFixedDepositRateDetails: getDetails(e.code),
                                        ),
                                      ),
                                  trailing: Icon(
                                    Icons.navigate_next,
                                    color: Theme.of(context).accentColor,
                                  ),
                                  title: Text(
                                    e.name ?? '',
                                    style: TextStyle(fontSize: 13.0),
                                  )),
                              Divider(),
                            ],
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
