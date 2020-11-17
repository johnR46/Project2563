import 'package:flutter/material.dart';

class Form14dayPage extends StatefulWidget {
  @override
  Form14dayPageState createState() {
    return new Form14dayPageState();
  }
}

class Form14dayPageState extends State<Form14dayPage> with TickerProviderStateMixin {
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