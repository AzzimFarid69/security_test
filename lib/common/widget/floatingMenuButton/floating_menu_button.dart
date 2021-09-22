import 'package:flutter/material.dart';
import 'package:security_test/common/utils/route_generator.dart';

import 'components/circular_menu.dart';
import 'components/circular_menu_item.dart';

class FloatingMenuButton extends StatelessWidget {
  const FloatingMenuButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: CircularMenu(
        alignment: Alignment.bottomLeft,
        radius: 130,
        toggleButtonColor: Colors.white,
        toggleButtonIconColor: Theme.of(context).accentColor,
        toggleButtonIconData: Icons.add,
        toggleButtonIconDataClose: Icons.clear,
        items: [
          CircularMenuItem(
            iconData: Icons.location_on,
            onTap: () {},
            color: Theme.of(context).accentColor,
            iconColor: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
          CircularMenuItem(
            iconData: Icons.euro,
            onTap: () => Navigator.pushNamed(context, Routes.inquiryService),
            color: Theme.of(context).accentColor,
            iconColor: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
          CircularMenuItem(
            icon: new Image.asset(
              "assets/ic_contactus.png",
              height: 30.0,
              color: Colors.white,
            ),
            onTap: () => Navigator.pushNamed(context, Routes.contacts),
            color: Theme.of(context).accentColor,
            iconColor: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
          ),
        ],
      ),
    );
  }
}
