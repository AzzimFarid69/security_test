import 'dart:async';

import 'package:flutter/material.dart';
import 'package:security_test/common/utils/custom_colors.dart';
import 'package:security_test/common/utils/utils.dart';

abstract class BaseStateful<T extends StatefulWidget> extends State<T> {
  String getAppTitle();
  String getAppSubtitle();
  List<Widget> getAction();
  Widget getDrawer();
  Widget getFloatingActionButton();
  Widget getBottomNavigation();
  Widget getChildView();

  Future<bool> _onWillPop() async => backTap(context) ?? false;

  bool backTap(BuildContext context) {
    Navigator.pop(context);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          centerTitle: true,
          toolbarHeight: 70,
          flexibleSpace: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('assets/logo.png', height: 45.0),
                ),
                SizedBox(
                  child: Container(color: Theme.of(context).accentColor),
                  height: 8,
                )
              ],
            ),
          ),
          actions: getAction(),
        ),
        drawer: getDrawer(),
        body: Column(
          children: [
            Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      getAppTitle() ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Visibility(
                      visible: getAppSubtitle().isNotNullOrEmpty,
                      child: Text(
                        getAppSubtitle() ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(child: getChildView()),
          ],
        ),
        backgroundColor: CustomColors.background,
        bottomNavigationBar: getBottomNavigation(),
        floatingActionButton: getFloatingActionButton(),
      ),
    );
  }
}
