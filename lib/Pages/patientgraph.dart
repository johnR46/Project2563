import 'package:flutter/material.dart';

class PatientgraphPage extends StatefulWidget {
  @override
  PatientgraphPageState createState() {
    return new PatientgraphPageState();
  }
}

class PatientgraphPageState extends State<PatientgraphPage> with TickerProviderStateMixin {
  double currentOpacity = 0;
  Animation<double> starAnimation;
  
  // get action => null;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Color(0xFFB3E5FC),
        appBar: AppBar(
          title: Text("หน้ากราฟ"),
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
