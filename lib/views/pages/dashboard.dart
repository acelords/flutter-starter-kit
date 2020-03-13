import 'package:flutter/material.dart';
import 'package:starterkit/utils/constants.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        padding: EdgeInsets.all(Constants.commonPadding),
        child: ListView(
          children: <Widget>[

          ],
        ),
      ),
    );
  }

}
