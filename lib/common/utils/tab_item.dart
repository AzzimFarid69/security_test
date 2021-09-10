import 'package:flutter/material.dart';

enum TabItem {
  signIn,
  expansion,
  deviceInfo,
  cryptography,
  pageOne,
  local,
  logout,
}

const Map<TabItem, String> drawerName = {
  TabItem.signIn: 'Sign In',
  TabItem.expansion: 'Expansion',
  TabItem.deviceInfo: 'Device Info',
  TabItem.cryptography: 'Cryptography',
  TabItem.pageOne: 'Tab One',
  TabItem.local: 'Location',
  TabItem.logout: 'Sign Out',
};

const Map<TabItem, String> tabName = {
  TabItem.signIn: 'Sign In To Your Account',
  TabItem.expansion: 'Expansion Tile Demo',
  TabItem.deviceInfo: 'Device Info Demo',
  TabItem.cryptography: 'Cryptography Demo',
  TabItem.pageOne: 'Tab One Example',
  TabItem.local: 'Location Example',
  TabItem.logout: null,
};

const Map<TabItem, IconData> tabIcons = {
  TabItem.signIn: Icons.vpn_key_sharp,
  TabItem.expansion: Icons.document_scanner_outlined,
  TabItem.deviceInfo: Icons.phone_android_sharp,
  TabItem.cryptography: Icons.enhanced_encryption_outlined,
  TabItem.pageOne: Icons.account_box_outlined,
  TabItem.local: Icons.map,
  TabItem.logout: Icons.logout,
};
