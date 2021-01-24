import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

 class Result extends StatelessWidget { 
  final int resultScore; 
  final Function resetHandler; 
  
  Result(this.resultScore, this.resetHandler); 
  
  //Remark Logic 
  String get resultPhrase { 
    String resultText; 
    if (resultScore >=3) { 
      resultText = 'ผลการประเมินของคุณความเสี่ยงรวม : 4คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัดคำแนะนำแบบเจาะจง : ให้ติดต่อสถานพยาบาลทันที'; 
      print(resultScore); 
    } else if (resultScore >= 2) { 
      resultText = 'ความเสี่ยงรวม : 3คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัดคำแนะนำแบบเจาะจง : เนื่องจากท่านมีประวัติอยู่ใกล้ชิดผู้ป่วยยืนยันCOVID-19 ให้ติดต่อเจ้าหน้าที่ควบคุมโรค เพื่อประเมินความเสี่ยง'; 
      print(resultScore); 
    } else if (resultScore >=1) { 
      resultText = 'ผลการประเมินของคุณความเสี่ยงรวม : 2คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัดคำแนะนำแบบเจาะจง : อาจเป็นโรคอื่น ถ้า 2 วัน อาการไม่ดีขึ้นให้ไปพบแพทย์'; 
    } else if (resultScore <= 1) { 
      resultText = 'ผลการประเมินของคุณความเสี่ยงรวม : 1คำแนะนำเบื้องต้น : ล้างมือ สวมหน้ากาก หลีกเลี่ยงที่แออัด'; 
    } else { 
      resultText = 'This is a poor score!'; 
      print(resultScore); 
    } 
    return resultText; 
  } 
  
  @override 
  Widget build(BuildContext context) { 
      return new Scaffold(
    body: new SingleChildScrollView(
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Center(
          child: new Form(
            //key: _formKey,
            child: new Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Card(
                     color: Colors.green[200],
                    margin: new EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 4.0,
                    child: new Padding(
                      padding: new EdgeInsets.all(25.0),
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.start, 
        
        children: <Widget>[ 
           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[
                             Image(image: AssetImage('assets/icons/n&d.png'),  width: 200,),
                            
                             ],
                              ),
        
          Text( 
            resultPhrase, 
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold), 
            textAlign: TextAlign.center, 
          ), //Text 
           Text( 
             'คะแนนรวม ' '$resultScore', 
             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), 
             textAlign: TextAlign.center, 
           ), //Text 
          FlatButton( 
            child: Text( 
              'ทำแบบประเมินตนอีกครั้ง', 
             style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),), //Text 
            
            textColor: Colors.blue, 
            onPressed: resetHandler, 
          ), //FlatButton 
        ], 
        //<Widget>[] 
      ), 
      
      //Column 
         )
         
         )
          
         
         ])))))); //Center 
  } 
} 


