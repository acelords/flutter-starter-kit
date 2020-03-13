import 'package:starterkit/views/auth/login.dart';
import 'package:starterkit/views/pages/about.dart';
import 'package:starterkit/views/pages/dashboard.dart';
import 'package:starterkit/views/pages/flutter_tips.dart';
import 'package:starterkit/views/pages/home.dart';
import 'package:starterkit/views/pages/rate_app.dart';
import 'package:starterkit/views/pages/refer_a_friend.dart';
import 'package:starterkit/views/pages/splash_page.dart';

Object appRoutes = {
  '/': (context) => HomePage(),
//  '/auth': (context) => Router(),

// pages
  '/splash': (context) => SplashScreenPage(),
  '/refer-a-friend': (context) => ReferAFriendPage(),
  '/about': (context) => AboutPage(),
  '/rate-app': (context) => RateApp(),
  '/flutter-tips': (context) => FlutterTipsPage(),

  // auth
  '/login': (context) => LoginPage(),
  '/dashboard': (context) => DashboardPage(),

  // backend

};
