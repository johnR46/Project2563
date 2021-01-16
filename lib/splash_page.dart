import 'package:flutter/material.dart';
import 'package:ifightcovid19/Screens/Welcome/welcome_screen.dart';
import 'package:splashscreen/splashscreen.dart';
// import 'bar.dart';
// import 'home.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 3,
        navigateAfterSeconds: WelcomeScreen(),
        title: Text(
          'ไอรู้ สู้โควิด',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0 ,
            color: Colors.black),
        ),
        
        
        image: Image.asset('assets/icons/heart.png'),
        backgroundColor: Colors.deepPurple[100],
        // styleTextUnderTheLoader: TextStyle(color: Colors.deepPurple),
        photoSize: 90.0,
        // loaderColor: Colors.pink[100]
        );
  }
}