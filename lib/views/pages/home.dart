import 'package:flutter/material.dart';
import 'package:starterkit/utils/constants.dart';
import 'package:starterkit/views/movies/index.dart';
import 'package:starterkit/views/partials/common_appbar_actions.dart';
import 'package:starterkit/views/partials/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.appName),
        actions: CommonAppBarActions(),
      ),
      drawer: HomeDrawer(),
      body: Container(
        padding: EdgeInsets.all(Constants.commonPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),

            RaisedButton(
              child: Text("Go to movies"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoviesIndexPage(),
                  ),
                );
              },
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

}
