import 'package:flutter/material.dart';
import 'package:security_test/base/base_stateful.dart';
import 'package:security_test/common/widget/custom_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key key}) : super(key: key);

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends BaseStateful<ContactsScreen> {
  @override
  String getAppTitle() => "Contact Us";

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
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: CustomWidget.buildBoxConstrain(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              children: [
                buildListTile(
                  drawable: "ic_location.png",
                  title: "People's Bank Head Office,\n"
                      "No.75,\n"
                      "Sir Chittampalam A. Gardiner Mawatha,\n"
                      "Colombo 2,\n"
                      "Sri Lanka.",
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 6.0),
                  onTap: () {},
                ),
                buildListTile(
                  drawable: "ic_phone.png",
                  title: "+94 (0) 11 2481481",
                  onTap: () => launch("tel:+94112481481"),
                ),
                buildListTile(
                  drawable: "ic_phone.png",
                  title: "+94 (0) 11 2490490",
                  onTap: () => launch("tel:+94112490490"),
                ),
                buildListTile(
                  drawable: "ic_phone.png",
                  title: "1961",
                  onTap: () => launch("tel:1961"),
                ),
                buildListTile(
                  drawable: "ic_email.png",
                  title: "info@peoplesbank.lk",
                  onTap: () => launch(
                      "mailto:info@peoplesbank.lk?subject=Meeting&body=Can we meet via Google Meet"),
                ),
                buildListTile(
                  drawable: "ic_swift.png",
                  title: "SWIFT Code: PSBKLKLX",
                  isDivider: false,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildListTile({
    String drawable,
    String title,
    bool isDivider: true,
    EdgeInsets contentPadding,
    Function onTap,
  }) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          dense: true,
          leading: drawable != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/$drawable",
                      width: 24.0,
                      height: 24.0,
                    ),
                  ],
                )
              : null,
          title: Text(
            title ?? '',
            style: TextStyle(fontSize: 14),
          ),
          contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 0.0),
        ),
        isDivider ? Divider() : Container(),
      ],
    );
  }
}
