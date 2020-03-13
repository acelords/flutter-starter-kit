import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

import 'package:get_version/get_version.dart';
import 'package:starterkit/utils/constants.dart';
import 'package:starterkit/utils/styles.dart';
import 'package:starterkit/views/partials/common_appbar_actions.dart';
import 'package:starterkit/views/partials/fake_bottom_buttons.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String _platformVersion = 'Unknown';
  String _projectVersion = '';
  String _projectCode = '';
  String _projectAppID = '';
  String _projectName = '';

  Color iconColor = Colors.grey[500];
  TextStyle titleStyle = TextStyle(color: Colors.grey[700]);
  TextStyle subtitleStyle = TextStyle(color: Colors.grey[500]);


  _setPackageInfo() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await GetVersion.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    String projectVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectVersion = await GetVersion.projectVersion;
    } on PlatformException {
      projectVersion = 'Failed to get project version.';
    }

    String projectCode;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectCode = await GetVersion.projectCode;
    } on PlatformException {
      projectCode = 'Failed to get build number.';
    }

    String projectAppID;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectAppID = await GetVersion.appID;
    } on PlatformException {
      projectAppID = 'Failed to get app ID.';
    }

    String projectName;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      projectName = await GetVersion.appName;
    } on PlatformException {
      projectName = 'Failed to get app name.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _projectVersion = projectVersion;
      _projectCode = projectCode;
      _projectAppID = projectAppID;
      _projectName = projectName;
    });
  }

  @override
  void initState() {
    super.initState();

    _setPackageInfo();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About App"),
        actions: CommonAppBarActions(),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0,),

            Card(
              color: Styles.commonDarkCardBackground,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text("About Us", style: Styles.title.copyWith(
                      height: 1,
                      fontSize: 22,
                    )),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(70.0, 10, 70.0, 10.0),
                      child: Divider(color: Colors.grey[500], height: 4,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(Constants.appAbout,
                        style: Styles.p,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10.0,),

            ListTile(
              leading: Icon(Icons.info, color: iconColor,),
              title: Text('Name', style: titleStyle),
              subtitle: Text(_projectName, style: subtitleStyle),
            ),
            Container(
              height: 10.0,
            ),
            ListTile(
              leading: Icon(Icons.info, color: iconColor,),
              title: Text('Running on', style: titleStyle),
              subtitle: Text(_platformVersion, style: subtitleStyle),
            ),
            Divider(
              height: 20.0,
            ),
            ListTile(
              leading: Icon(Icons.info, color: iconColor,),
              title: Text('Version Name', style: titleStyle),
              subtitle: Text(_projectVersion, style: subtitleStyle),
            ),
            Divider(
              height: 20.0,
            ),
            ListTile(
              leading: Icon(Icons.info, color: iconColor,),
              title: Text('Version Code', style: titleStyle),
              subtitle: Text(_projectCode, style: subtitleStyle),
            ),
            Divider(
              height: 20.0,
            ),
            ListTile(
              leading: Icon(Icons.info, color: iconColor,),
              title: Text('App ID', style: titleStyle),
              subtitle: Text(_projectAppID, style: subtitleStyle),
            ),

            Container(
              height: 120,
              padding: EdgeInsets.all(15),
              child: Image.asset('assets/images/logo.png'),
            ),

            FakeBottom(),

          ],
        ),
      ),
    );
  }

}