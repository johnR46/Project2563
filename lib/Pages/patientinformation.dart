
import 'package:flutter/material.dart';


import 'package:ifightcovid19/pages2/risky.dart';
import 'package:ifightcovid19/pages2/risky1.dart';
import 'package:ifightcovid19/pages2/risky2.dart';
import 'package:ifightcovid19/pages2/risky3.dart';

 
class PatientinformationPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
    debugShowCheckedModeBanner: false,
     home: new Scaffold(
      //  backgroundColor: Color(0xFFB3E5FC),
      appBar: AppBar(
        title: Text("ข้อมูลผู้ป่วย"),
         actions: [
//         // action button
         IconButton(
           icon: Image.asset('assets/icons/heart.png'),
           onPressed: () { },
         ),
       ],
        backgroundColor: Colors.indigo,
      ),
      body: Center(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,


            
        children: <Widget>[
            SizedBox(width: 50.0),
            Text('Dash board',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            Text('ข้อมูลผู้ป่วยที่มารับการตรวจคัดกรองโรค',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                  
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                    // color: Color.fromRGBO(38, 38, 38, 0.4),
                    color: Color.fromARGB(255, 128, 255, 0),
                    textColor: Colors.black,
                    child: new Text("ปกติ"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RiskyPages2()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                   color :Color.fromARGB(255, 255, 255, 0),
                    textColor: Colors.black,
                    child: new Text("ปานกลาง"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Risky1Pages2()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                   color :Color.fromARGB(255, 255, 128, 0),
                    textColor: Colors.black,
                    child: new Text("เสี่ยง"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Risky2Pages2()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new MaterialButton(
                    height: 100.0,
                    minWidth: 150.0,
                    color: Color.fromRGBO(255, 0, 0, 1),
                    textColor: Colors.black,
                    child: new Text("เสี่ยงมาก"),
                    onPressed: () => {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Risky3Pages2 ()),
                    )
                    },
                    splashColor: Colors.redAccent,
                  )),
            ],
          ),
 
        ],
      )),
    ));
  }
}
 