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
  List<AccessPermission> upl;
  List<String> example = [];

  @override
  void initState() {
    upl = Constants.getPermission();
    homepageGrid = MenuAccessControl.dashboardMenuControl();
    print('Example: ${upl.length}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: homepageGrid.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildDashboard(homepageGrid[index]);
          },
        ),
      ),
    );
  }

  Widget _buildDashboard(HomePageGridViewListData item) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(item.text),
          ],
        ),
      ),
    );
  }
}
