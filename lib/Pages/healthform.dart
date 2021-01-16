import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/chatbot.dart';

class HealthformPages extends StatefulWidget {
  HealthformPages({Key key}) : super(key: key);

  @override
  HealthformPagesState createState() => new HealthformPagesState();
}

class HealthformPagesState extends State<HealthformPages> with TickerProviderStateMixin {
  AnimationController _controller;

  int _radioValue;
  int _radioValue2;
  

  @override
  initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) _controller.reverse();
      });
    super.initState();
  }

  void _handleRadioValue(int value) {
    // Don't animate the first time that the radio value is set
    if (_radioValue != null) _controller.forward();
    setState(() {
      _radioValue = value;
    });
  }

  void _handleRadioValue2(int value) {
    // Don't animate the first time that the radio value is set
    if (_radioValue2 != null) _controller.forward();
    setState(() {
      _radioValue2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(""),
            actions: [
              // action button
              IconButton(
                icon: Image.asset('assets/icons/heart.png'),
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.indigo,
          ),
          body: new Container(
              //อยากขยับไปฝั่งซ้ายจัง ค่อยคิด
              padding: EdgeInsets.only(bottom: 20.0),
              
              // child: new Card(
                  child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: SafeArea(
                  child: new Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       new Text(
                        ' แบบบันทึกสุขภาพก่อนรับการคัดกรอง',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      //  -------------------------------------------------------------------------------------------------------------------------------------------------
                     
                      new Text(
                        'มีโรคประจำตัวหรือไม่ ',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Row(
                            children: [
                              new Radio<int>(
                                value: 1,
                                groupValue: _radioValue,
                                onChanged: _handleRadioValue,
                              ),
                              new Text(
                                'มี',
                                style: new TextStyle(fontSize: 16.0),
                              )
                            ],
                          ),
                        ],
                      ),

                      new Row(
                        children: [
                          new Radio<int>(
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValue,
                          ),
                          new Text(
                            ' ไม่มี',  
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                     
                     
                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),

                      new Text(
                        'ประวัติการเจ็บป่วยในปัจจุบัน',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Row(
                            children: [
                              new Radio<int>(
                                value: 1,
                                groupValue: _radioValue2,
                                onChanged: _handleRadioValue2,
                              ),
                              new Text(
                                'โรคเบาหวาน',
                                style: new TextStyle(fontSize: 16.0),
                              )
                            ],
                          ),
                        ],
                      ),

                      new Row(
                        children: [
                          new Radio<int>(
                            value: 0,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'โรคความดันโลหิตสูง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                       new Row(
                        children: [
                          new Radio<int>(
                            value: 2,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            ' โรคไขมันในเลือดสูง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                       new Row(
                        children: [
                          new Radio<int>(
                            value: 3,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'โรคอ้วน',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                       new Row(
                        children: [
                          new Radio<int>(
                            value: 4,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'โรคมะเร็ง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      Positioned(
               bottom: 40,
               left: MediaQuery.of(context).size.width * .05,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     alignment: Alignment.center,
                     width: MediaQuery.of(context).size.width * .9,
                     child: Row(
                       children: [
                       Container(
                           child: Row(children: [

                          ]),
                        ),
                        // Spacer(),
                          InkWell(
                             onTap: () {

                           Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => ChatbotPage(
                                         )));
                           },
                            
                            
                             child: Container(
                               height: Platform.isIOS ? 70 : 60,
                               alignment: Alignment.center,
                               child: Text(
                                 'บันทึก',
                                 style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600, fontSize: 20),
                               ),
                             ),
                           ),
                            //  SizedBox(height: 10.0),
                              Spacer(),
                          InkWell(
                            onTap: () {

                           Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => ChatbotPage(
                                         )));
                           },
                            // onTap: () => print('Get Started Now'),
                            child: Container(
                              height: Platform.isIOS ? 70 : 60,
                              alignment: Alignment.center,
                              child: Text(
                                'ข้าม',
                                style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600, fontSize: 20),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            )
                      
                      // RoundedButton(
                      //   text: "ถัดไป",
                      //   // color: kPrimaryLightColor,
                      //   // textColor: Colors.black,
                      //   press: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) {
                      //           return ScreeningScreenTwo();
                      //         },
                      //       ),
                      //     );
                      //   },
                      // ),
                      
                    ],
                    
                    
                  ),
                ),
              )),
        ));
  }



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
 
// // ignore: must_be_immutable
// class HealthformPages extends StatelessWidget {

//    bool checked = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // title: Text("คัดกรอง COVID-19"),
//       ),

//        body: new SingleChildScrollView(
//                     padding: new EdgeInsets.only(bottom: 20.0),
                    
//                     child: new Center(
                      
//                       child: new Form(
//                         //key: _formKey,
//                         child: new Center(
                          
//                           child: Column(
//                             // mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.center,
                            
//                             mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                                  SizedBox(height: 20.0),
//                                 Text('แบบบันทึกสุขภาพก่อนรับการคัดกรอง',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                
                    
//                   new Card(
//                     color: Colors.green[300],
//                     margin: new EdgeInsets.only(
//                         left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0)),
//                     elevation: 4.0,
//                     child: new Padding(
//                       padding: new EdgeInsets.all(25.0),
//                       child: new Column(
//                         children: <Widget>[
//                             Text('คำอธิบายแบบคัดกรอง',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),

//                    Text('ท่านสามารถทำแบบคัดกรองผู้ป่วย COVID-19 คัดกรองผ่าน Ifightcovid19 App หากท่านไม่มีความประสงค์จะเข้ารับการคัดกรอง กรุณาปิดแล้วออกจากหน้านี้',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
//     SizedBox(height: 20.0),
//       Text('กรุณาเลือกเพียงหนึ่งคำตอบจากตัวเลือกที่ปรากฏ',style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),),
//        Row(children: [
//           HStack([
//                     Checkbox(
//                       value: checked, onChanged: (bool value) { checked=value ;},
//                     ),
//                     "".text.make().py16()
//                   ]),
	
//          SizedBox(width: 10.0),
//          ]),
         
//          Text('ข้าพเจ้ารับทราบคำอธิบายแบบคัดกรองและต้องการเข้ารับการคัดกรองCOVID-19',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),

//                         ],
//                       ),
//                     ),
//                   ),
                


              
//               SizedBox(height: 20.0),
//                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                       MaterialButton(
//                        color: Colors.indigo,
//                        child: Text('ยอมรับ', style: TextStyle(color: Colors.white)),
//                        onPressed: () { 
//                          Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return ScreeningScreen();
//                           },
//                         ),
//                       ); //แอดไปยังหน้า ประเมินผู้ป่วย
//                         //Do Something
//                        },
//                      ),
//                  ]),
        
//                 ],
                
//               ),
              
//             ),
//           ),
          
//         ),
//       ),
//   );
//         }
      
//         void setState(Null Function() param0) {}
// }
 
 