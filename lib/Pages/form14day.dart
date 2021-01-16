import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/tabel14day.dart';
import 'package:intl/intl.dart';

class Form14dayPage extends StatefulWidget {
  @override
  Form14dayPageState createState() {
    return new Form14dayPageState();
  }
}

class Form14dayPageState extends State<Form14dayPage> with TickerProviderStateMixin {
  double currentOpacity = 0;
  // Animation<double> starAnimation;
  bool checkbox1 = true;
  bool checkbox2 = false;
  bool checkbox3 = true;
  bool checkbox4 = false;
  bool checkbox5 = true;
  bool checkbox6 = false;
  bool checkbox7 = true;
  DateTime date = DateTime.now();
  String dropdownValue = '6';

  String _timeString;

  @override
  void initState() {
  
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final String formattedDateTime =
        DateFormat('MM-dd-yyyy').format(DateTime.now()).toString(); // (\n kk:mm:ss) เป็นตัวเวลาอยู่หลังyyyy-MM-dd
    setState(() {
      _timeString = formattedDateTime;
      print(_timeString);
    });
  }
   @override
   Widget build(BuildContext context) {
    return new MaterialApp(
     debugShowCheckedModeBanner: false,   
       
    home: new Scaffold(
       
        //  backgroundColor: Color(0xFFB3E5FC),
         appBar: AppBar(
           title: Text(""),
            actions: [
          //action button
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
             Text(
          _timeString.toString(),
             textAlign: TextAlign.center,
           style: TextStyle(
            fontSize: 15,
           fontWeight: FontWeight.bold,
            ),
          ),
              // Text('16 ธันวาคม 2563',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
             Text('แบบฟอร์มสุขภาพจำนวน 14 วันเพื่อประเมินอาการหลังอาการเสี่ยงหรือต้องกักตัว',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            Text('ท่านมีอาการดังต่อไปนี้หรือไม่',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
           Text('(หากไม่มีอาการไม่ต้องกดทำเครื่องหมายใดๆ)',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
            Row(children: [
              SizedBox(
                width: 10,
                child: Checkbox(
                  value: checkbox1,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    //value may be true or false
                    setState(() {
                      checkbox1 = !checkbox1;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.0),
              Text('มีไข้')
            ]),
            Row(children: [
              SizedBox(
                width: 10,
                child: Checkbox(
                  value: checkbox2,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    //value may be true or false
                    setState(() {
                      checkbox2 = !checkbox2;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.0),
              Text('ไอ')
            ]),
             SizedBox(height: 10.0),
            Row(children: [
              SizedBox(
                width: 10,
                child: Checkbox(
                  value: checkbox3,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    //value may be true or false
                    setState(() {
                      checkbox3 = !checkbox3;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.0),
              Text('น้ำมูล')
            ]),
             SizedBox(height: 10.0),
            Row(children: [
              SizedBox(
                width: 10,
                child: Checkbox(
                  value: checkbox4,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    //value may be true or false
                    setState(() {
                      checkbox4 = !checkbox4;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.0),
              Text('เจ็บคอ')
            ]),
             SizedBox(height: 10.0),
            Row(children: [
              SizedBox(
                width: 10,
                child: Checkbox(
                  value: checkbox5,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    //value may be true or false
                    setState(() {
                      checkbox5 = !checkbox5;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.0),
              Text('หายใจลำบาก หอบเหนื่อย')
            ]),
              Text('ท่านเพิ่งเริ่ม มีอาการอื่นๆ ดังต่อไปนี้หรือไม่',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0),
            Row(children: [
              SizedBox(
                width: 10,
                child: Checkbox(
                  value: checkbox6,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    //value may be true or false
                    setState(() {
                      checkbox6 = !checkbox6;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.0),
              Text('ไม่ได้กลิ่น')
            ]),
             SizedBox(height: 10.0),
            Row(children: [
              SizedBox(
                width: 10,
                child: Checkbox(
                  value: checkbox7,
                  activeColor: Colors.orange,
                  onChanged: (value) {
                    //value may be true or false
                    setState(() {
                      checkbox7 = !checkbox7;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.0),
              Text('ไม่รู้รส')
            ]),
          //    SizedBox(height: 10.0),
          //   Text('ระบุวันที่เริ่มมีอาการป่วย:',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
          //   SizedBox(height: 10.0),
          //   InkWell(
          //     onTap: () async {
          //       final DateTime picked = await showDatePicker(
          //         context: context,
          //         initialDate: date,
          //         firstDate: DateTime(1994),
          //         lastDate: DateTime(2101),
          //         builder: (BuildContext context, Widget child) {
          //           return Theme(
          //             data: ThemeData.dark(),
          //             child: child,
          //           );
          //         },
          //       );
          //       if (picked != null && picked != date)
          //         setState(() {
          //           date = picked;
          //         });
          //     },
          //     child: Text('$date กดเลือกวันที่'),
          //   ),
//   Text('อายุของท่าน (ปี):',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
//            Container(
//   padding: EdgeInsets.only(left: 5.0, right: 5.0),
//   decoration: BoxDecoration(
// 	border: Border.all(color: Colors.grey),
// 	borderRadius: BorderRadius.circular(3.0)
//   ),
//   child: DropdownButton<String>(
// 	value: dropdownValue,
// 	isExpanded: true,
// 	icon: Icon(Icons.keyboard_arrow_down, size: 22),
// 	underline: SizedBox(),
// 	items: <String>['6','7','8','9','10','11', '12' ,'13' ,'14' ,'15' , '16' , '17' ,'18','19','20-30','30-40','40-50','50-60'].map((String value) {
// 	  return new DropdownMenuItem<String>(
// 		value: value,
// 		child: new Text(value),
// 	  );
// 	}).toList(),
// 	onChanged: (value) {
// 	  //Do something with this value
// 	  setState(() {
// 		dropdownValue = value;
// 	  });

// 	},
  
//   ),
    
  
// ),
//     SizedBox(height: 10.0),
//              Text('ระบุวันที่เริ่มมีอาการป่วย:',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
//              SizedBox(height: 10.0),
//              InkWell(
//                onTap: () async {
//                  final DateTime picked = await showDatePicker(
//                    context: context,
//                    initialDate: date,
//                    firstDate: DateTime(1994),
//                    lastDate: DateTime(2101),
//                    builder: (BuildContext context, Widget child) {
//                      return Theme(
//                        data: ThemeData.dark(),
//                        child: child,
//                      );
//                    },
//                  );
//                  if (picked != null && picked != date)
//                    setState(() {
//                      date = picked;
//                    });
//                },
//                child: Text('$date กดเลือกวันที่'),
//              ),
           SizedBox(height: 10.0),
            SizedBox(height: 10.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              
              MaterialButton(
                color: Colors.blue,
                child: Text('บันทึกฟอร์ม', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Tabel14dayPage();
                    },
                  ),
                );
                  //Do Something
                },
              ),
              // 
            ])
            
          ])
          
                    
        ),
        
      )
      
      
     ));
  }
}
