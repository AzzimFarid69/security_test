import 'package:flutter/material.dart';
import 'package:security_test/common/utils/tab_item.dart';

class DrawerList extends StatelessWidget {
  final Function onTap;
  final TabItem tabItem;
  final TabItem currentTab;

  const DrawerList({
    Key key,
    this.onTap,
    @required this.tabItem,
    @required this.currentTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentTab == tabItem ? Theme.of(context).accentColor : null,
      child: ListTile(
        leading: Icon(
          tabIcons[tabItem],
          color: currentTab == tabItem ? Colors.white : Colors.black87,
        ),
        title: Text(
          drawerName[tabItem],
          style: TextStyle(
            fontWeight: currentTab == tabItem ? FontWeight.bold : null,
            color: currentTab == tabItem ? Colors.white : null,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
          onTap();
        },
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: currentTab == tabItem ? Colors.white : null,
          size: 20,
        ),
      ),
    );
  }
}
