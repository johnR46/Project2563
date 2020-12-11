import 'package:flutter/material.dart';

class PatientinformationPage extends StatefulWidget {
  @override
  PatientinformationPageState createState() {
    return new PatientinformationPageState();
  }
}

class PatientinformationPageState extends State<PatientinformationPage> with TickerProviderStateMixin {
  double currentOpacity = 0;
  Animation<double> starAnimation;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: AppBar(
          title: Text("ข้อมูลผู้ป่วย"),
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
          child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: [
            Text('รายชื่อประวัติข้อมูลผู้ป่วยที่มารับการตรวจคัดกรองโรค',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                  ]),
      ),
    )));
  }
}