import 'package:flutter/material.dart';

import 'utils/router.dart';
import 'utils/styles.dart';
import 'views/pages/unknown_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors
        // brightness: Brightness.dark,
        primaryColor: Styles.appPrimaryColor,
        accentColor: Styles.appAccentColor,
        brightness: Brightness.light,

        // for drawer color
        canvasColor: Styles.appCanvasColor,

        // Define the default font family.
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: Styles.appTextTheme,
      ),
      initialRoute: '/splash',
      routes: appRoutes,
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => UnknownPage(),
        );
      },
    );
  }
}
