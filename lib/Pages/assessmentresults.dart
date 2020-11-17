import 'package:flutter/material.dart';

class AssessmentresultsPage extends StatefulWidget {
  @override
  AssessmentresultsPageState createState() {
    return new AssessmentresultsPageState();
  }
}

class AssessmentresultsPageState extends State<AssessmentresultsPage> with TickerProviderStateMixin {
  double currentOpacity = 0;
  Animation<double> starAnimation;

  get action => null;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Color(0xFFB3E5FC),
        appBar: AppBar(
          title: Text(""),
           actions: [
        // action button
        IconButton(
          icon: Image.asset('assets/icons/heart.png'),
          onPressed: () { },
        ),

      ],
        backgroundColor: Colors.indigo,
        ),
        body: new Center(
        ),
      ),
    );
  }
}