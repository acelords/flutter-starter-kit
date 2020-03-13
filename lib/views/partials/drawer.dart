import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:starterkit/utils/constants.dart';
import 'package:starterkit/utils/styles.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeaderItem(),
          FlutterTipsItem(),

          Divider(color: Colors.grey[500],),

          LoginItem(),
          ReferAFriendItem(),
          AboutItem(),
          RateAppItem(),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}

class BackendDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeaderItem(),

          Divider(color: Colors.grey[500],),
          LogoutItem(),
          ReferAFriendItem(),
          AboutItem(),
          RateAppItem(),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}


/// menu header
class DrawerHeaderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
//      child: Text("Menu",
//        style: TextStyle(
//          fontSize: 20.0,
//          color: Colors.white,
//        ),
//      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        image: DecorationImage(
            image: AssetImage(Constants.logoKey),
            fit: BoxFit.contain
        ),
      ),
    );
  }
}


/// home item
class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Home", style: Styles.appDrawerTextStyle),
      leading: Icon(Icons.lightbulb_outline, color: Styles.appDrawerIconColor),
      onTap: () {
        Navigator.pop(context);

        Navigator.pushNamed(context, '/');
      },
    );
  }
}


/// flutter tips item
class FlutterTipsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Flutter Tips", style: Styles.appDrawerTextStyle),
      leading: Icon(Icons.lightbulb_outline, color: Styles.appDrawerIconColor),
      onTap: () {
        Navigator.pop(context);

        Navigator.pushNamed(context, '/flutter-tips');
      },
    );
  }
}


/// refer a friend item
class ReferAFriendItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Refer a Friend", style: Styles.appDrawerTextStyle),
      leading: Icon(Icons.share, color: Styles.appDrawerIconColor),
      onTap: () {
        Navigator.pop(context);

        Navigator.pushNamed(context, '/refer-a-friend');
      },
    );
  }
}

/// logout item
class LogoutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Logout", style: Styles.appDrawerTextStyle),
      leading: Icon(Icons.exit_to_app, color: Styles.appDrawerIconColor),
      onTap: () {
//        AuthProvider().logout();

//        Navigator.pop(context);
//        Navigator.pop(context);

        Navigator.pushNamed(context, '/');
      },
    );
  }
}

/// login item
class LoginItem extends StatefulWidget {
  @override
  _LoginItemState createState() => _LoginItemState();
}

class _LoginItemState extends State<LoginItem> {
  bool loggedIn = false;

  void _checkStatus() async {
//    bool isLoggedIn = await AuthProvider().checkIfAuth();
//    setState(() {
//      loggedIn = isLoggedIn;
//    });
  }

  @override
  void initState() {
    _checkStatus();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return loggedIn
      ? ListTile(
          title: Text("Dashboard", style: Styles.appDrawerTextStyle),
          leading: Icon(Icons.home, color: Styles.appDrawerIconColor),
          onTap: () {
            Navigator.pop(context);

            Navigator.pushNamed(context, '/dashboard');
          },
        )
      : ListTile(
          title: Text("Sign In", style: Styles.appDrawerTextStyle),
          leading: Icon(Icons.exit_to_app, color: Styles.appDrawerIconColor),
          onTap: () {
            Navigator.pop(context);

            Navigator.pushNamed(context, '/login');
          },
        );
  }
}

/// about item
class AboutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("About", style: Styles.appDrawerTextStyle),
      leading: Icon(Icons.info_outline, color: Styles.appDrawerIconColor),
      onTap: () {
        Navigator.pop(context);

        Navigator.pushNamed(context, '/about');
      },
    );
  }
}


/// rate app item
class RateAppItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Rate Us", style: Styles.appDrawerTextStyle),
      leading: Icon(Icons.star, color: Styles.appDrawerIconColor),
      onTap: () {
        Navigator.pop(context);

        Navigator.pushNamed(context, '/rate-app');
      },
    );
  }
}

