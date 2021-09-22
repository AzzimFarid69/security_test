import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/common/utils/route_generator.dart';
import 'package:security_test/common/widget/list_tiles.dart';

class InquiryServiceActivity extends StatefulWidget {
  const InquiryServiceActivity({Key key}) : super(key: key);

  @override
  _InquiryServiceActivityState createState() => _InquiryServiceActivityState();
}

class _InquiryServiceActivityState extends BaseStateful<InquiryServiceActivity> {
  @override
  String getAppTitle() => "Bank Rates";

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
            drawable: "MB_ISP_ExchangeRateInquiry.jpg",
            title: 'Currency Exchange Rate',
            subtitle: 'Inquire the latest exchange rates',
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.exchangeRate,
                arguments: CommonArgument(forexRateList: Constants.retrieveExchangeRate()),
              );
            },
          ),
          MyListTile(
            drawable: "MB_ISP_InterestRateInquiry.jpg",
            title: 'Interest Rates For Deposits',
            subtitle: 'Inquire the interest rates for deposit products',
            onTap: () => Navigator.pushNamed(context, Routes.rateInquiry),
          ),
        ],
      ),
    );
  }
}
