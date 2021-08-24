import 'package:flutter/material.dart';

enum TabItem {
  signIn,
  expansion,
  deviceInfo,
  pageOne,
  pageTwo,
  logout,
}

const Map<TabItem, String> drawerName = {
  TabItem.signIn: 'Sign In',
  TabItem.expansion: 'Expansion',
  TabItem.deviceInfo: 'Device Info',
  TabItem.pageOne: 'Tab One',
  TabItem.pageTwo: 'Tab Two',
  TabItem.logout: 'Sign Out',
};

const Map<TabItem, String> tabName = {
  TabItem.signIn: 'Sign In To Your Account',
  TabItem.expansion: 'Expansion Tile Demo',
  TabItem.deviceInfo: 'Device Info Demo',
  TabItem.pageOne: 'Tab One Example',
  TabItem.pageTwo: 'Tab Two Example',
  TabItem.logout: null,
};

const Map<TabItem, IconData> tabIcons = {
  TabItem.signIn: Icons.vpn_key_sharp,
  TabItem.expansion: Icons.document_scanner_outlined,
  TabItem.deviceInfo: Icons.phone_android_sharp,
  TabItem.pageOne: Icons.account_box_outlined,
  TabItem.pageTwo: Icons.people_alt_outlined,
  TabItem.logout: Icons.logout,
};
