import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/common/utils/route_generator.dart';
import 'package:security_test/common/widget/list_tiles.dart';

class RateInquiryActivity extends StatefulWidget {
  const RateInquiryActivity({Key key}) : super(key: key);

  @override
  _RateInquiryActivityState createState() => _RateInquiryActivityState();
}

class _RateInquiryActivityState extends BaseStateful<RateInquiryActivity> {
  @override
  String getAppTitle() => "Interest Rates For Deposits";

  @override
  String getAppSubtitle() => null;

  @override
  List<Widget> getAction() => null;

  @override
  Widget getDrawer() => null;

  @override
  Widget getFloatingActionButton() => null;

  @override
  Widget getBottomNavigation() => null;

  @override
  Widget getChildView() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          MyListTile(
            drawable: "MB_ISP_InterestRateFD.png",
            title: 'Fixed Deposit Interest Rate',
            subtitle: 'Interest rates for fixed products',
            onTap: () => Navigator.pushNamed(
              context,
              Routes.fixedDeposit,
              arguments: CommonArgument(
                productCategoryList: Constants.retrieveProductCategoryList(),
              ),
            ),
          ),
          MyListTile(
            drawable: "MB_ISP_InterestRateSA.jpg",
            title: 'Saving Interest Rates',
            subtitle: 'Interest rates for saving products',
            onTap: () => Navigator.pushNamed(
              context,
              Routes.casaInterestRate,
              arguments: CommonArgument(
                productDetails: Constants.retrieveCASAInterestRate(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
