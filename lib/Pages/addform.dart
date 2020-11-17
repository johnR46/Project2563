import 'package:flutter/material.dart';

class AddformPage extends StatefulWidget {
  @override
  AddformPageState createState() {
    return new AddformPageState();
  }
}

class AddformPageState extends State<AddformPage> with TickerProviderStateMixin {
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
          title: Text("หน้าเพิ่มแบบฟอร์ม"),
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