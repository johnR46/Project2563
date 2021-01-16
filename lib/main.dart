import 'package:flutter/material.dart';

import 'package:ifightcovid19/Screens/Welcome/welcome_screen.dart';

import 'package:ifightcovid19/constants.dart';
import 'package:ifightcovid19/splash_page.dart';
// import 'WelcomeScreens';
// import 'package:mongo_dart/mongo_dart.dart';
// import 'dart:io' show Platform;

// String host = Platform.environment['127.0.0.1'] ;
// String port = Platform.environment['27017'];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //  var db = Db('mongodb://$host:$port/mongo_dart-blog');
   
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashPage(),
    );
  }
}
