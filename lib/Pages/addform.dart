

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/assessment.dart';
// import 'package:ifightcovid19/Screens/Screening/components/body.dart';



 class AddformPage extends StatefulWidget {
   @override
   _AddformPageState createState() => _AddformPageState();
 }

 class _AddformPageState extends State<AddformPage> {



  @override
  Widget build(BuildContext context) {
    
        return  Scaffold(
      appBar: AppBar(
        
        leading: Image.asset(""),
        centerTitle: true,
        title: new Text(
          "หน้าเพิ่มแบบฟอร์ม",
        ),
        actions: [
         //action button
         IconButton(
         icon: Image.asset('assets/icons/heart.png'),
      onPressed: () { },
      ),
     ],
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(children: [
            Text('ชื่อหัวข้อ'),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'กรอกหัวข้อ',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
            SizedBox(height: 10.0),
            Text('เพิ่มคำถาม'),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'กรอกคำถาม',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
            SizedBox(height: 10.0),
            Text('เพิ่มคำตอบ'),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'กรอกคำตอบ',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
             SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'กรอกคำตอบ',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'กรอกคำตอบ',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
            SizedBox(height: 10.0),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'กรอกคำตอบ',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(5.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
             SizedBox(height: 10.0),
             SizedBox(height: 10.0),
             Row(mainAxisAlignment: MainAxisAlignment.center, children: [
               RaisedButton(
                 color: Colors.redAccent,
                 child: Text('ลบฟอร์ม', style: TextStyle(color: Colors.white)),
                 onPressed: () {   //ลบทิ้งเลบ
                  // Do Something
                 },
               ),
                MaterialButton(
                 color: Colors.indigo,
                 child: Text('บันทึกฟอร์ม', style: TextStyle(color: Colors.white)),
                 onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AssessmentPage();
                    },
                  ),
                );
                  //Do Something
                },
               ),
           ]),
    
           
          ])
      )
    ),
    );
  }
}

