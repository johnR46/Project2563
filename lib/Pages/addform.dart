

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



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
                 onPressed: () {   //แอดไปยังหน้า ประเมินผู้ป่วย
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

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';


// class AddformPage extends StatefulWidget {
//   @override
//   _AddformPageState createState() => _AddformPageState();
// }

// class _AddformPageState extends State<AddformPage> {
//   String _selectedText = "0";
 

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: new Scaffold(
//       backgroundColor: Color(0xFFB3E5FC),
//       appBar: AppBar(
//               title: Text("หน้าเพิ่มแบบฟอร์ม"),
//              actions: [
//           //  action button
//           IconButton(
//             icon: Image.asset('assets/icons/heart.png'),
//             onPressed: () { },
//           ),

//         ],
//           backgroundColor: Colors.indigo,
        
//        ),
      
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           padding: EdgeInsets.all(10.0),
//           child: Column(children: [
//             Row(children: [
//               SizedBox(
//                 width: 10,
           
//               ),
//               SizedBox(width: 10.0),
//             ]),
            
//             SizedBox(height: 10.0),
//             Text('เพิ่มข้อคำถาม',style: TextStyle(fontWeight: FontWeight.bold,
//                 fontSize: 15.0),),
//             SizedBox(height: 10.0),
//             Container(
//               padding: EdgeInsets.only(left: 5.0, right: 5.0),
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(3.0)
//               ),
//                child: DropdownButton<String>(
//                 value: _selectedText ,
//                 isExpanded: true,
//                 icon: Icon(Icons.keyboard_arrow_down, size: 22),
//                 underline: SizedBox(),
//                 items: <String>['0','1-3','3-5','5-10', '10-15'].map((String value) {
//                   return new DropdownMenuItem<String>(
//                     value: value,
//                     child: new Text(value),
//                   );
//                 }).toList(),
//                 onChanged: (String val) {
//           setState(() {
//             _selectedText = val;
//           });
//         },
 
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text('ตัวเลือกคำตอบ',style: TextStyle(fontWeight: FontWeight.bold,
//                 fontSize: 15.0),),
//             SizedBox(height: 10.0),
//             Container(
//               padding: EdgeInsets.only(left: 5.0, right: 5.0),
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(3.0)
//               ),
//               child: DropdownButton<String>(
//                 value: _selectedText ,
//                 isExpanded: true,
//                 icon: Icon(Icons.keyboard_arrow_down, size: 22),
//                 underline: SizedBox(),
//                 items: <String>['0','1-3','3-5','5-10', '10-15'].map((String value) {
//                   return new DropdownMenuItem<String>(
//                     value: value,
//                     child: new Text(value),
//                   );
//                 }).toList(),
//                 onChanged: (String val) {
//           setState(() {
//             _selectedText = val;
//           });
//         },
//               ),
//             ),
//              SizedBox(height: 10.0),
//             Text('ชื่อหัวข้อแบบฟอร์ม',style: TextStyle(fontWeight: FontWeight.bold,
//                 fontSize: 15.0),),
//                  Container(
//             width: 500, height: 40,
//             child: TextField(
//                 decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 // labelText: 'Enter Name Here',
//                  hintText: 'ชื่อหัวข้อ',
//                  ),
//                   autofocus: false,
//                  )
//                ),


//             SizedBox(height: 10.0),
//             SizedBox(height: 10.0),
//             Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//               RaisedButton(
//                 color: Colors.redAccent,
//                 child: Text('ลบฟอร์ม', style: TextStyle(color: Colors.white)),
//                 onPressed: () {   //ลบทิ้งเลบ
//                   //Do Something
//                 },
//               ),
//                MaterialButton(
//                 color: Colors.indigo,
//                 child: Text('บันทึกฟอร์ม', style: TextStyle(color: Colors.white)),
//                 onPressed: () {   //แอดไปยังหน้า ประเมินผู้ป่วย
//                   //Do Something
//                 },
//               ),
//           ]),
          
          
//           ])
//           ),
//       ),
        
//       )
//     );
//   }
// }

