import 'package:flutter/material.dart';
import 'package:security_test/common/utils/constant.dart';
import 'package:security_test/common/utils/menu_access_control.dart';
import 'package:security_test/models/access_peremission.dart';
import 'package:security_test/models/home_page_grid_view_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<HomePageGridViewListData> homepageGrid;
  List<String> example = [];

  @override
  void initState() {
    homepageGrid = MenuAccessControl.dashboardMenuControl();
    print('home: $homepageGrid');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _getTitles(homepageGrid),
    );
  }

  List<Widget> _getTitles(List<HomePageGridViewListData> homepageGrid) {
    final List<Widget> tiles = [];
    for (int i = 0; i < homepageGrid.length; i++) {
      tiles.add(GridTile(
        child: Text(homepageGrid[i].text),
      ));
    }
    return tiles;
  }
}
