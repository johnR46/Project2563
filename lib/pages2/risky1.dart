import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class Risky1Pages2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
         actions: [
//         // action button
         IconButton(
           icon: Image.asset('assets/icons/heart.png'),
           onPressed: () { },
         ),
       ],
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: [
              Text('รายชื่อประวัติข้อมูลผู้ป่วยที่มารับการตรวจคัดกรองโรค',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
            // SizedBox(height: 10.0),

              
            ])
              ), 
    ));
          
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Text('Dashboard'),
      //   ),
      // ),

  }
}