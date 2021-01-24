import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Pages/assessment.dart';

import 'package:ifightcovid19/Screens/quiz1.dart';
import 'package:ifightcovid19/Screens/result.dart';

// void main() => runApp(AssessmentPage()); 
  
class AssessmentPage extends StatefulWidget { 
  @override 
  State<StatefulWidget> createState() { 
    return _AssessmentPageState(); 
  } 
} 
  
class _AssessmentPageState extends State<AssessmentPage> { 
  final _questions = const [ 
    { 
      'questionText': 'ข้อที่ 1 : ผู้ป่วยมีอุณหภูมิกายตั้งแต่ 37.5 องศาขึ้นไป หรือ ให้ประวัติว่ามีไข้ใน', 
      'answers': [ 
        {'text': 'ต่ำกว่า 37.5', 'score': 0}, 
        {'text': 'สูงกว่าหรือเท่ากับ 37.5 หรือ รู้สึกว่ามีไข้', 'score': 1}, 
      ], 
    }, 
    { 
      'questionText': 'ข้อที่ 2 : ผู้ป่วยมีอาการระบบทางเดินหายใจ อย่างใดอย่างหนึ่งดังต่อไปนี้ "ไอ น้ำมูก เจ็บคอ หายใจเหนื่อย หรือหายใจลำบาก"', 
      'answers': [ 
        {'text': 'ไม่มี', 'score': 0}, 
        {'text': 'มี', 'score': 1}, 
      ], 
    }, 
    { 
      'questionText': 'ข้อที่ 3 : ผู้ป่วยมีประวัติเดินทางไปยัง หรือ มาจาก หรือ อาศัยอยู่ในพื้นที่เกิดโรค COVID-19 ในช่วงเวลา 14 วัน ก่อนป่วย', 
      'answers': [ 
        {'text': 'ไม่มี', 'score': 0}, 
        {'text': 'มี', 'score': 1}, 
      ], 
    }, 
    { 
      'questionText': 'ข้อที่ 4 : อยู่ใกล้ชิดกับผู้ป่วยยืนยัน COVID-19 (ใกล้กว่า 1 เมตร นานเกิน 5 นาที) ในช่วง 14 วันก่อน', 
      'answers': [ 
        {'text': 'ไม่มี', 'score': 0}, 
        {'text': 'มี', 'score': 1}, 
      ], 
    }, 
    { 
      'questionText': 'ข้อที่ 5 : มีประวัติไปสถานที่ชุมนุมชน หรือสถานที่ที่มีการรวมกลุ่มคน เช่น ตลาดนัด ห้างสรรพสินค้า สถานพยาบาล หรือ ขนส่งสาธารณะ', 
      'answers': [ 
        {'text': 'ไม่มี', 'score': 0}, 
        {'text': 'มี', 'score': 1}, 
       
      ], 
    }, 
    { 
      'questionText': 'ข้อที่ 6 : ผู้ป่วยประกอบอาชีพที่สัมผัสใกล้ชิดกับนักท่องเที่ยวต่างชาติ สถานที่แออัด หรือติดต่อคนจำนวนมาก', 
      'answers': [ 
        {'text': 'ไม่ใช่', 'score': 0}, 
        {'text': 'ใช่', 'score': 1}, 

      ], 
    }, 
     { 
      'questionText': 'ข้อที่ 7 : เป็นบุคลากรทางการแพทย์', 
      'answers': [ 
        {'text': 'ไม่ใช่', 'score': 0}, 
        {'text': 'ใช่', 'score': 1}, 
      ], 
    }, 


    { 
      'questionText': 
          'ข้อที่ 8 : มีผู้ใกล้ชิดป่วยเป็นไข้หวัดพร้อมกัน มากกว่า 5 คน ในช่วงสัปดาห์ที่ป่วย', 
      'answers': [ 
        { 'text': 'ไม่มี',   'score': 0,   }, 
        {'text': 'มี', 'score': 1}, 
      ], 
    }, 
  ]; 
  
  var _questionIndex = 0; 
  var _totalScore = 0; 
  
  void _resetQuiz() { 
    setState(() { 
      _questionIndex = 0; 
      _totalScore = 0; 
    }); 
  } 
  
  void _answerQuestion(int score) { 
    _totalScore += score; 
  
    setState(() { 
      _questionIndex = _questionIndex + 1; 
    }); 
    print(_questionIndex); 
    if (_questionIndex < _questions.length) { 
      print('We have more questions!'); 
    } else { 
      print('No more questions!'); 
    } 
  } 
  
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar( 
          title: Text(''), 
           actions: [
              // action button
              IconButton(
                icon: Image.asset('assets/icons/heart.png'),
                onPressed: () {},
              ),
            ],
          backgroundColor: Colors.indigo,
        ), 
        body: Padding( 
          padding: const EdgeInsets.all(30.0), 
          child: _questionIndex < _questions.length 
              ? Quiz( 
                  answerQuestion: _answerQuestion, 
                  questionIndex: _questionIndex, 
                  questions: _questions, 
                ) //Quiz 
              : Result(_totalScore, _resetQuiz), 
              
        ), //Padding 
        
      ), //Scaffold 
      
      debugShowCheckedModeBanner: false, 
    ); //MaterialApp 
    
  } 
} 
      // RoundedButton(
      //                   text: "ถัดไป",
      //                   // color: kPrimaryLightColor,
      //                   // textColor: Colors.black,
      //                   press: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                         builder: (context) {
      //                           return ScreeningresultsScreen();
      //                         },
      //                       ),
      //                     );
      //                   },
      //                 ),



// import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Screens/Screening_1/screening_screen.dart';

// import 'package:ifightcovid19/components/rounded_button.dart';

// class BodyPage extends StatefulWidget {
//   BodyPage({Key key}) : super(key: key);

//   @override
//   BodyPageState createState() => new BodyPageState();
// }

// class BodyPageState extends State<BodyPage> with TickerProviderStateMixin {
//   AnimationController _controller;

//   int _radioValue;
//   int _radioValue2;

//   @override
//   initState() {
//     _controller = new AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 100),
//     )..addStatusListener((AnimationStatus status) {
//         if (status == AnimationStatus.completed) _controller.reverse();
//       });
//     super.initState();
//   }

//    void _handleRadioValue(int value) {
//       //Don't animate the first time that the radio value is set
//      if (_radioValue != null) _controller.forward();
//      setState(() {
//        _radioValue = value;
//      });
//    }

//   void _handleRadioValue2(int value) {
//      //Don't animate the first time that the radio value is set
//     if (_radioValue2 != null) _controller.forward();
//     setState(() {
//       _radioValue2 = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: new Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             title: Text(""),
//             actions: [
//               // action button
//               IconButton(
//                 icon: Image.asset('assets/icons/heart.png'),
//                 onPressed: () {},
//               ),
//             ],
//             backgroundColor: Colors.indigo,
//           ),
//           body: new Container(
//               padding: EdgeInsets.only(bottom: 20.0),
//               child: new Card(
//                 color: Colors.green[200],
               
//                   child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 2.0),
//                 child: SafeArea(
//                   child: new Column(
//                     children: [
//                       // -------------------------------------------------------------------------------------------------------------------------------------------------
//                       new Padding(
//                         padding: new EdgeInsets.all(4.0),
//                       ),
//                       new Text(
//                         ' ข้อที่ 1 : ผู้ป่วยมีอุณหภูมิกายตั้งแต่ 37.5 องศาขึ้นไป หรือ ให้ประวัติว่ามีไข้ใน ',
//                         style: new TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18.0,
//                         ),
//                       ),

//                       new Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: <Widget>[
//                           new Row(
//                             children: [
//                               new Radio<int>(
//                                 value: 1,
//                                 groupValue: _radioValue,
//                                 onChanged: _handleRadioValue,
//                               ),
//                               new Text(
//                                 'ต่ำกว่า 37.5',
//                                 style: new TextStyle(fontSize: 16.0),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),

//                       new Row(
//                         children: [
//                           new Radio<int>(
//                             value: 0,
//                             groupValue: _radioValue,
//                             onChanged: _handleRadioValue,
//                           ),
//                           new Text(
//                             'มากกว่า 37.7',
//                             style: new TextStyle(fontSize: 16.0),
//                           ),
//                         ],
//                       ),

                    
//                       new Padding(
//                         padding: new EdgeInsets.all(4.0),
//                       ),

//                       // -------------------------------------------------------------------------------------------------------------------------------------------------

//                       new Padding(
//                         padding: new EdgeInsets.all(4.0),
//                       ),
//                       new Text(
//                         'ข้อที่ 2 : ผู้ป่วยมีอาการระบบทางเดินหายใจ อย่างใดอย่างหนึ่งดังต่อไปนี้ "ไอ น้ำมูก เจ็บคอ หายใจเหนื่อย หรือหายใจลำบาก"',
//                         style: new TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18.0,
//                         ),
//                       ),
//                       new Row(
//                         children: <Widget>[
//                           new Radio<int>(
//                             value: 0,
//                             groupValue: _radioValue2,
//                             onChanged: _handleRadioValue2,
//                           ),
//                           new Text(
//                             'มี',
//                             style: new TextStyle(fontSize: 16.0),
//                           ),
//                         ],
//                       ),

//                       new Row(children: [
//                         new Radio<int>(
//                           value: 1,
//                           groupValue: _radioValue2,
//                           onChanged: _handleRadioValue2,
//                         ),
//                         new Text(
//                           'ไม่มี',
//                           style: new TextStyle(fontSize: 16.0),
//                         ),
//                       ]),

//                       // new Divider(
//                       //   height: 5.0,
//                       //   color: Colors.black,
//                       // ),
//                       new Padding(
//                         padding: new EdgeInsets.all(4.0),
//                       ),
//                       Spacer(),
//                       SizedBox(height: 40),
//                       RoundedButton(
//                         text: "ถัดไป",
//                         press: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) {
//                                 return ScreeningScreenOne();
//                               },
//                             ),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ))),
//         ));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

//  class Result extends StatelessWidget { 
//   final int resultScore; 
//   final Function resetHandler; 
  
//   Result(this.resultScore, this.resetHandler); 
  
//   //Remark Logic 
//   String get resultPhrase { 
//     String resultText; 
//     if (resultScore >=3) { 
//       resultText = 'ผลการประเมินของคุณความเสี่ยงรวม : 4คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัดคำแนะนำแบบเจาะจง : ให้ติดต่อสถานพยาบาลทันที'; 
//       print(resultScore); 
//     } else if (resultScore >= 2) { 
//       resultText = 'ความเสี่ยงรวม : 3คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัดคำแนะนำแบบเจาะจง : เนื่องจากท่านมีประวัติอยู่ใกล้ชิดผู้ป่วยยืนยันCOVID-19 ให้ติดต่อเจ้าหน้าที่ควบคุมโรค เพื่อประเมินความเสี่ยง'; 
//       print(resultScore); 
//     } else if (resultScore >=1) { 
//       resultText = 'ผลการประเมินของคุณความเสี่ยงรวม : 2คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัดคำแนะนำแบบเจาะจง : อาจเป็นโรคอื่น ถ้า 2 วัน อาการไม่ดีขึ้นให้ไปพบแพทย์'; 
//     } else if (resultScore <= 1) { 
//       resultText = 'ผลการประเมินของคุณความเสี่ยงรวม : 1คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัด'; 
//     } else { 
//       resultText = 'This is a poor score!'; 
//       print(resultScore); 
//     } 
//     return resultText; 
//   } 
  
//   @override 
//   Widget build(BuildContext context) { 
//       return new Scaffold(
//     body: new SingleChildScrollView(
//         padding: new EdgeInsets.only(bottom: 20.0),
//         child: new Center(
//           child: new Form(
//             //key: _formKey,
//             child: new Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   new Card(
//                      color: Colors.green[200],
//                     margin: new EdgeInsets.only(
//                         left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0)),
//                     elevation: 4.0,
//                     child: new Padding(
//                       padding: new EdgeInsets.all(25.0),
//       child: Column( 
//         mainAxisAlignment: MainAxisAlignment.start, 
        
//         children: <Widget>[ 
//            Row(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                              Image(image: AssetImage('assets/icons/n&d.png'),  width: 200,),
                            
//                              ],
//                               ),
        
//           Text( 
//             resultPhrase, 
//             style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold), 
//             textAlign: TextAlign.center, 
//           ), //Text 
//           //  Text( 
//           //    'คะแนนรวม ' '$resultScore', 
//           //    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), 
//           //    textAlign: TextAlign.center, 
//           //  ), //Text 
//           FlatButton( 
//             child: Text( 
//               'ทำแบบประเมินตนอีกครั้ง', 
//              style: new TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15.0,
//                         ),), //Text 
            
//             textColor: Colors.blue, 
//             onPressed: resetHandler, 
//           ), //FlatButton 
//         ], 
//         //<Widget>[] 
//       ), 
      
//       //Column 
//          )
         
//          )
          
         
//          ])))))); //Center 
//   } 
// } 







 
