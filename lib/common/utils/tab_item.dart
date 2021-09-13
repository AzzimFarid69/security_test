import 'package:flutter/material.dart';

enum TabItem {
  signIn,
  expansion,
  deviceInfo,
  cryptography,
  pageOne,
  local,
  tnc,
  paymentHistory,
  accountSummary,
  logout,
}

const Map<TabItem, String> drawerName = {
  TabItem.signIn: 'Sign In',
  TabItem.expansion: 'Expansion',
  TabItem.deviceInfo: 'Device Info',
  TabItem.cryptography: 'Cryptography',
  TabItem.pageOne: 'Tab One',
  TabItem.local: 'Location',
  TabItem.tnc: 'Terms & Conditions',
  TabItem.paymentHistory: 'Payment History',
  TabItem.accountSummary: 'Account Summary',
  TabItem.logout: 'Sign Out',
};

const Map<TabItem, String> tabName = {
  TabItem.signIn: 'Sign In To Your Account',
  TabItem.expansion: 'Expansion Tile Demo',
  TabItem.deviceInfo: 'Device Info Demo',
  TabItem.cryptography: 'Cryptography Demo',
  TabItem.pageOne: 'Tab One Example',
  TabItem.local: 'Location Example',
  TabItem.tnc: 'Terms & Conditions Example',
  TabItem.paymentHistory: 'Payment History Example',
  TabItem.accountSummary: 'Account Summary Example',
  TabItem.logout: null,
};

const Map<TabItem, IconData> tabIcons = {
  TabItem.signIn: Icons.vpn_key_sharp,
  TabItem.expansion: Icons.document_scanner_outlined,
  TabItem.deviceInfo: Icons.phone_android_sharp,
  TabItem.cryptography: Icons.enhanced_encryption_outlined,
  TabItem.pageOne: Icons.account_box_outlined,
  TabItem.local: Icons.map,
  TabItem.tnc: Icons.document_scanner,
  TabItem.paymentHistory: Icons.payment,
  TabItem.accountSummary: Icons.account_circle,
  TabItem.logout: Icons.logout,
};
