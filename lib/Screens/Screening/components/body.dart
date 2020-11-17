import 'package:flutter/material.dart';


import 'package:ifightcovid19/Screens/Login/components/background.dart';
import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
import 'package:ifightcovid19/Screens/Signup/signup_screen.dart';
import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';

import 'package:ifightcovid19/components/rounded_input_field.dart';
import 'package:ifightcovid19/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';

import 'package:ifightcovid19/Screens/Screening2/screening2_screen.dart';
import 'package:ifightcovid19/components/rounded_button.dart';


class BodyPage extends StatefulWidget {
  BodyPage({Key key}) : super(key: key);
  
  

  @override
  BodyPageState createState() => new BodyPageState();
}



class BodyPageState extends State<BodyPage> 
  
with TickerProviderStateMixin {
  AnimationController _controller;
  
  int _radioValue;

  @override initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    )..addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed)
        _controller.reverse();
    });
    super.initState();
  }

  void _handleRadioValue(int value) {
    // Don't animate the first time that the radio value is set
    if (_radioValue != null)
      _controller.forward();
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text("ฟอร์ม"),
         actions: [
        // action button
        IconButton(
          icon: Image.asset('assets/icons/heart.png'),
          onPressed: () { },
        ),
      ],
        backgroundColor: Colors.indigo,
       ),
   
   body: new Container(//อยากขยับไปฝั่งซ้ายจัง ค่อยคิด
  padding: EdgeInsets.only(bottom: 20.0),
     child: new Card(
       child:Padding( padding: EdgeInsets.symmetric(vertical: 2.0),
     child: SafeArea(
       child: new Column(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           
           new Padding(padding: new EdgeInsets.all(4.0),),  
           new Text( 'ข้อที่ 1 : ผู้ป่วยมีอุณหภูมิกายตั้งแต่ 37.5 องศาขึ้นไป หรือ ให้ประวัติว่ามีไข้ใน', style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,
            ),),
           new Row( mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                                 new Radio<int>(
                                   value: 0,
                                   groupValue: _radioValue,
                                   onChanged: _handleRadioValue,
                                 ),
                                 new Text(
                                   'ต่ำกว่า 37.5',
                                   style: new TextStyle(fontSize: 16.0),
                                 ),
                                 new Radio<int>(
                                   value: 1,
                                   groupValue: _radioValue,
                                   onChanged: _handleRadioValue,
                                 ),
                                 new Text(
                                   'มากกว่า 37.7',
                                   style: new TextStyle(fontSize: 16.0),
                                 ),
                                  
                               ],
                             ),
            
           new Divider(height: 5.0, color: Colors.black,),
           new Padding(padding: new EdgeInsets.all(4.0),),
           new Text( ' ข้อที่ 2 : ผู้ป่วยมีอาการระบบทางเดินหายใจ อย่างใดอย่างหนึ่งดังต่อไปนี้ "ไอ น้ำมูก เจ็บคอ หายใจเหนื่อย หรือหายใจลำบาก" ', style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,
            ),),
           new Row( mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                                 new Radio<int>(
                                   value: 2,
                                   groupValue: _radioValue,
                                   onChanged: _handleRadioValue,
                                 ),
                                 new Text(
                                   'มี',
                                   style: new TextStyle(fontSize: 16.0),
                                 ),
                                 new Radio<int>(
                                   value: 3,
                                   groupValue: _radioValue,
                                   onChanged: _handleRadioValue,
                                 ),
                                 new Text(
                                   'ไม่มี',
                                   style: new TextStyle(fontSize: 16.0),
                                 ),
                                  
                               ],
                             ),
           new Divider(height: 5.0, color: Colors.black,),
           new Padding(padding: new EdgeInsets.all(4.0),),
           new Text( 'ข้อที่ 3 : ผู้ป่วยมีประวัติเดินทางไปยัง หรือ มาจาก หรือ อาศัยอยู่ในพื้นที่เกิดโรค COVID-19 ในช่วงเวลา 14 วัน ก่อนป่วย', style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,
            ),),
           new Row( mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                                 new Radio<int>(
                                   value: 4,
                                   groupValue: _radioValue,
                                   onChanged: _handleRadioValue,
                                 ),
                                 new Text(
                                   'มี',
                                   style: new TextStyle(fontSize: 16.0),
                                 ),
                                 new Radio<int>(
                                   value: 5,
                                   groupValue: _radioValue,
                                   onChanged: _handleRadioValue,
                                 ),
                                 new Text(
                                   'ไม่มี',
                                   style: new TextStyle(fontSize: 16.0),
                                 ),
                                  
                               ],
                             ),
            
            new Divider(height: 5.0, color: Colors.black,),
            new Padding(padding: new EdgeInsets.all(4.0),),
            new Text( 'ข้อที่ 4 : อยู่ใกล้ชิดกับผู้ป่วยยืนยัน COVID-19 (ใกล้กว่า 1 เมตร นานเกิน 5 นาที) ในช่วง 14 วันก่อน ', style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,
             ),),
          
            new Row( mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Radio<int>(
                                    value: 6,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValue,
                                  ),
                                  new Text(
                                    'มี',
                                    style: new TextStyle(fontSize: 16.0),
                                  ),
                                  new Radio<int>(
                                    value: 7,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValue,
                                  ),
                                  new Text(
                                    'ไม่มี',
                                    style: new TextStyle(fontSize: 16.0),
                                  ),
                                  
                                ],
                              ),  
            //  SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "ถัดไป",
              // color: kPrimaryLightColor,
              // textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screening2Screen();
                    },
                  ),
                );
              },
            ),
            // AlreadyHaveAnAccountCheck(
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return ScreeningScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),    
//             new AnimatedBuilder(
//             child: const Text('ถัดไป'),
//              animation: _controller,
//              builder: (BuildContext context, Widget child) {
//              return new RaisedButton(
//              color: new ColorTween(
//               begin: theme.primaryColor,
//               end: theme.disabledColor,
//              ).animate(_controller).value,
//              colorBrightness: Brightness.dark,
//              child: child,
//              onPressed: _radioValue == null ?
//               null :
//         () => print('submit')
//  );
//         }
//              )
           ],
         ),
       ),
       )
      )
     ),
     )
    );
    
}
 @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

