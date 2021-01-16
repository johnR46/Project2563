import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/Description.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
import 'package:ifightcovid19/service/ItemsService.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  BodyPageState createState() => new BodyPageState();
}

class BodyPageState extends State<Body> with TickerProviderStateMixin {
  AnimationController _controller;
  String _dropdownDistinct = 'ตำบลคำขวาง';

  List<String> distinctList = [
    "ตำบลคำขวาง",
    "ตำบลคำน้ำแซบ",
    "ตำบลคูเมือง",
    "ตำบลท่าลาด",
    "ตำบลธาตุ",
    'ตำบลบุ่งหวาย',
    'ตำบลบุ่งไหม',
    'ตำบลวารินชำราบ',
    'ตำบลสระสมิง',
    'ตำบลหนองกินเพล',
    'ตำบลห้วยขะยุง',
    'ตำบลเมืองศรีไค',
    'ตำบลแสนสุข',
    'ตำบลโนนผึ้ง',
    'ตำบลโนนโหนน',
    'ตำบลโพธิ์ใหญ่',
  ];

  @override
  initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) _controller.reverse();
      });
    ItemsService.getItems();
    super.initState();
  }

  void _handleDistinctSelect(String value) {
    // Don't animate the first time that the radio value is set
    if (_dropdownDistinct != null) _controller.forward();
    setState(() {
      _dropdownDistinct = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBar(
          title: Text(""),
          actions: [
            //action button
            IconButton(
              icon: Image.asset('assets/icons/heart.png'),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.indigo,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                         SizedBox(height: 10.0),
                 TextFormField(
                   keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                       hintText: 'ชื่อ-นามสกุล*',
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey, width: 32.0),
                          //borderRadius: BorderRadius.circular(5.0)
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          //borderRadius: BorderRadius.circular(2.0)
                       )),
                   onChanged: (value) {
                    // Do something with this value
                   },
                 ),
                    SizedBox(height: 10.0),
                 TextFormField(
                   keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                       hintText: 'หมายเลขบัตรประชาชน*',
                       border: OutlineInputBorder(
                           borderSide:
                               BorderSide(color: Colors.grey, width: 32.0),
                           borderRadius: BorderRadius.circular(5.0)),
                       focusedBorder: OutlineInputBorder(
                           borderSide:
                               BorderSide(color: Colors.grey, width: 1.0),
                           borderRadius: BorderRadius.circular(.0))),
                   onChanged: (value) {
                    // Do something with this value
                   },
                 ),
                  SizedBox(height: 10.0),
                 TextFormField(
                   keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                       hintText: 'วัน/เดือน/ปี*',
                       border: OutlineInputBorder(
                           borderSide:
                               BorderSide(color: Colors.grey, width: 32.0),
                           borderRadius: BorderRadius.circular(5.0)),
                       focusedBorder: OutlineInputBorder(
                           borderSide:
                               BorderSide(color: Colors.grey, width: 1.0),
                           borderRadius: BorderRadius.circular(5.0))),
                   onChanged: (value) {
                     //Do something with this value
                   },
                 ),
                  SizedBox(height: 10.0),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ที่อยู่*',
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0))),
                  onChanged: (value) {},
                ),
                  SizedBox(height: 10.0),
                      new Container(
                        child: Text('เลือกตำบล'),
                      ),
                      new Container(
                          child: DropdownButton<String>(
                        value: _dropdownDistinct,
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: _handleDistinctSelect,
                        items: distinctList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )),
                      SizedBox(height: 10.0),
                 TextFormField(
                   keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                       hintText: 'เบอร์โทรศัพท์*',
                       border: OutlineInputBorder(
                           borderSide:
                               BorderSide(color: Colors.grey, width: 32.0),
                           borderRadius: BorderRadius.circular(5.0)),
                       focusedBorder: OutlineInputBorder(
                           borderSide:
                               BorderSide(color: Colors.grey, width: 1.0),
                           borderRadius: BorderRadius.circular(5.0))),
                   onChanged: (value) {
                     //Do something with this value
                   },
                 ),
                 SizedBox(height: 10.0),
                                 RoundedButton(
                   text: "ลงทะเบียน",
                    //color: kPrimaryLightColor,
                    //textColor: Colors.black,
                   press: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) {
                            //return ScreeningScreen();
                           return DescriptionPages();
                         },
                       ),
                     );
                   },
                 ),
                    ]
                    
                    ))));
  }
}

// class Body extends StatefulWidget {
//   Body({Key key}) : super(key: key);

//   String dropdownValue = 'ตำบลคำขวาง';

//   List<String> elements1 = [
//     "ตำบลคำขวาง",
//     "ตำบลคำน้ำแซบ",
//     "ตำบลคูเมือง",
//     "ตำบลท่าลาด",
//     "ตำบลธาตุ",
//     'ตำบลบุ่งหวาย',
//     'ตำบลบุ่งไหม',
//     'ตำบลวารินชำราบ',
//     'ตำบลสระสมิง',
//     'ตำบลหนองกินเพล',
//     'ตำบลห้วยขะยุง',
//     'ตำบลเมืองศรีไค',
//     'ตำบลแสนสุข',
//     'ตำบลโนนผึ้ง',
//     'ตำบลโนนโหนน',
//     'ตำบลโพธิ์ใหญ่',
//   ];
//   final elements2 = [
//     "จังหวัดอุบลราชธานี",
//   ];

//   int selectedIndex1 = 0, selectedIndex2 = 0;

//    void _handleSelectDistince(String value) {
//     // Don't animate the first time that the radio value is set
//     if (dropdownValue != null)
//     setState(() {
//       dropdownValue = value;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//         backgroundColor: Color(0xFFFAFAFA),
//         appBar: AppBar(
//           title: Text(""),
//           actions: [
//             //action button
//             IconButton(
//               icon: Image.asset('assets/icons/heart.png'),
//               onPressed: () {},
//             ),
//           ],
//           backgroundColor: Colors.indigo,
//         ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Container(
//             padding: EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 SizedBox(height: 10.0),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       hintText: 'ชื่อ-นามสกุล*',
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey, width: 32.0),
//                         // borderRadius: BorderRadius.circular(5.0)
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                         // borderRadius: BorderRadius.circular(2.0)
//                       )),
//                   onChanged: (value) {
//                     //Do something with this value
//                   },
//                 ),
//                 SizedBox(height: 10.0),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       hintText: 'หมายเลขบัตรประชาชน*',
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 32.0),
//                           borderRadius: BorderRadius.circular(5.0)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 1.0),
//                           borderRadius: BorderRadius.circular(.0))),
//                   onChanged: (value) {
//                     //Do something with this value
//                   },
//                 ),
//                 SizedBox(height: 10.0),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       hintText: 'วัน/เดือน/ปี*',
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 32.0),
//                           borderRadius: BorderRadius.circular(5.0)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 1.0),
//                           borderRadius: BorderRadius.circular(5.0))),
//                   onChanged: (value) {
//                     //Do something with this value
//                   },
//                 ),
//                 SizedBox(height: 10.0),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       hintText: 'ที่อยู่*',
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 32.0),
//                           borderRadius: BorderRadius.circular(5.0)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 1.0),
//                           borderRadius: BorderRadius.circular(5.0))),
//                   onChanged: (value) {},
//                 ),
//                 new Container(
//                   child: Text('เลือกตำบล'),
//                 ),
//                 new Container(
//                     child: DropdownButton<String>(
//                   value: dropdownValue,
//                   iconSize: 24,
//                   elevation: 16,
//                   style: TextStyle(color: Colors.deepPurple),
//                   underline: Container(
//                     height: 2,
//                     color: Colors.deepPurpleAccent,
//                   ),
//                   onChanged: (String newValue) {
//                     setState(() {
//                       dropdownValue = newValue;
//                     });
//                   },
//                   items:
//                       elements1.map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 )),
//                 // SizedBox(height: 10.0),
//                 // Padding(
//                 //   padding: const EdgeInsets.only(left: 10.0),
//                 //   child: Text(
//                 //     "เลือกตำบล",
//                 //     style: TextStyle(
//                 //         color: Colors.grey, fontWeight: FontWeight.w500),
//                 //   ),
//                 // ),
//                 // DirectSelect(
//                 //     itemExtent: 35.0,
//                 //     selectedIndex: selectedIndex1,
//                 //     child: MySelectionItem(
//                 //       isForList: false,
//                 //       title: elements1[selectedIndex1],
//                 //     ),
//                 //     onSelectedItemChanged: (index) {
//                 //       setState(() {
//                 //         selectedIndex1 = index;
//                 //       });
//                 //     },
//                 //     items: _buildItems1()),
//                 // Padding(
//                 //   padding: const EdgeInsets.only(left: 10.0, top: 20.0),
//                 //   child: Text(
//                 //     "เลือกจังหวัด",
//                 //     style: TextStyle(
//                 //         color: Colors.grey, fontWeight: FontWeight.w500),
//                 //   ),
//                 // ),
//                 // DirectSelect(
//                 //     itemExtent: 35.0,
//                 //     selectedIndex: selectedIndex2,
//                 //     child: MySelectionItem(
//                 //       isForList: false,
//                 //       title: elements2[selectedIndex2],
//                 //     ),
//                 //     onSelectedItemChanged: (index) {
//                 //       setState(() {
//                 //         selectedIndex2 = index;
//                 //       });
//                 //     },
//                 //     items: _buildItems2()),
//                 SizedBox(height: 10.0),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       hintText: 'เบอร์โทรศัพท์*',
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 32.0),
//                           borderRadius: BorderRadius.circular(5.0)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.grey, width: 1.0),
//                           borderRadius: BorderRadius.circular(5.0))),
//                   onChanged: (value) {
//                     //Do something with this value
//                   },
//                 ),
//                 SizedBox(height: size.height * 0.03),
//                 RoundedButton(
//                   text: "ลงทะเบียน",
//                   // color: kPrimaryLightColor,
//                   // textColor: Colors.black,
//                   press: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) {
//                           // return ScreeningScreen();
//                           return DescriptionPages();
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

// }

// import 'package:direct_select/direct_select.dart';
// import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Pages/Description.dart';
// // import 'package:ifightcovid19/Screens/Login/components/background.dart';
// import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
// // import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
// import 'package:ifightcovid19/components/rounded_button.dart';
// // import 'package:ifightcovid19/components/rounded_input_field.dart';


// class Body extends StatelessWidget {
//   // const Body({
//   //   Key key,
//   // }) : super(key: key);


//   //  String dropdownValue = 'A';
//    final elements1 = [
//     "ตำบลคำขวาง",
//     "ตำบลคำน้ำแซบ",
//     "ตำบลคูเมือง",
//     "ตำบลท่าลาด",
//     "ตำบลธาตุ",
//     'ตำบลบุ่งหวาย',
//     'ตำบลบุ่งไหม',
//     'ตำบลวารินชำราบ',
//     'ตำบลสระสมิง',
//     'ตำบลหนองกินเพล',
//     'ตำบลห้วยขะยุง',
//     'ตำบลเมืองศรีไค',
//     'ตำบลแสนสุข',
//     'ตำบลโนนผึ้ง',
//     'ตำบลโนนโหนน',
//     'ตำบลโพธิ์ใหญ่',



//   ];
//   final elements2 = [
//     "จังหวัดอุบลราชธานี",
//     // "Chicken",
//     // "Salad",
//   ];
//     int selectedIndex1 = 0,
//       selectedIndex2 = 0;
//    List<Widget> _buildItems1() {
//     return elements1
//         .map((val) => MySelectionItem(
//               title: val,
//             ))
//         .toList();
//   }

//   List<Widget> _buildItems2() {
//     return elements2
//         .map((val) => MySelectionItem(
//               title: val,
//             ))
//         .toList();
//   }
   
  
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     // return new MaterialApp(
//     //  debugShowCheckedModeBanner: false,   
       
//     return Scaffold(
       
//          backgroundColor: Color(0xFFFAFAFA),
         
//          appBar: AppBar(
//            title: Text(""),
//             actions: [
//           //action button
//          IconButton(
//            icon: Image.asset('assets/icons/heart.png'),
//            onPressed: () { },
//          ),

//        ],
//          backgroundColor: Colors.indigo,
//          ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           padding: EdgeInsets.all(10.0),
        
        
//           // child: new Card(

//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Text('ลงทะเบียนเข้าใช้งาน',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
//             // Text(
//             //   "ลงทะเบียนเข้าใช้งาน",
//             //   style: TextStyle(fontWeight: FontWeight.bold),
//             //  //ตัวเข้ม style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)
//             // ),
          
//              SizedBox(height: 10.0),
//                TextFormField(
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   hintText: 'ชื่อ-นามสกุล*',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 32.0),
//                       // borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                       // borderRadius: BorderRadius.circular(2.0)
//                   )
//               ),
//               onChanged: (value) {
//                 //Do something with this value
//               },
//             ),
//              SizedBox(height: 10.0),
//             TextFormField(
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   hintText: 'หมายเลขบัตรประชาชน*',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 32.0),
//                       borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                       borderRadius: BorderRadius.circular(.0)
//                   )
//               ),
//               onChanged: (value) {
//                 //Do something with this value
//               },
//             ),
//              SizedBox(height: 10.0),
//              TextFormField(
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   hintText: 'วัน/เดือน/ปี*',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 32.0),
//                       borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                       borderRadius: BorderRadius.circular(5.0)
//                   )
//               ),
//               onChanged: (value) {
//                 //Do something with this value
//               },
//             ),
//              SizedBox(height: 10.0),
//                          TextFormField(
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   hintText: 'ที่อยู่*',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 32.0),
//                       borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                       borderRadius: BorderRadius.circular(5.0)
//                   )
//               ),
//               onChanged: (value) {
//                 //Do something with this value
//               },
//             ),
//             // SizedBox(height: 10.0),
//             // Container(
//             //   padding: EdgeInsets.only(left: 5.0, right: 5.0),
//             //   decoration: BoxDecoration(
//             //       border: Border.all(color: Colors.grey),
//             //       borderRadius: BorderRadius.circular(3.0)
//             //   ),
//             // child: DropdownButton<String>(
//             //     value: dropdownValue,
//             //     isExpanded: true,
//             //     icon: Icon(Icons.keyboard_arrow_down, size: 22),
//             //     underline: SizedBox(),
//             //     items: <String>['A', 'B', 'C', 'D'].map((String value) {
//             //       return new DropdownMenuItem<String>(
//             //         value: value,
//             //         child: new Text(value),
//             //       );
//             //     }).toList(),
//             //     onChanged: (value) {
//             //       //Do something with this value
//             //       setState(() {
//             //                           dropdownValue = value;
//             //                         });
//             //                       },
//             //                     ),
//             //                   ),
                  
//             // SizedBox(height: 10.0),
//             // Container(
//             //   padding: EdgeInsets.only(left: 5.0, right: 5.0),
//             //   decoration: BoxDecoration(
//             //       border: Border.all(color: Colors.grey),
//             //       borderRadius: BorderRadius.circular(3.0)
//             //   ),
//             // child: DropdownButton<String>(
//             //     value: dropdownValue,
//             //     isExpanded: true,
//             //     icon: Icon(Icons.keyboard_arrow_down, size: 22),
//             //     underline: SizedBox(),
//             //     items: <String>['A', 'B', 'C', 'D'].map((String value) {
//             //       return new DropdownMenuItem<String>(
//             //         value: value,
//             //         child: new Text(value),
//             //       );
//             //     }).toList(),
//             //     onChanged: (value) {
//             //       //Do something with this value
//             //       setState(() {
//             //                           dropdownValue = value;
//             //                         });
//             //                       },
//             //                     ),
//             //                   ),
                          
//              SizedBox(height: 10.0),
//             //              TextFormField(
//             //   keyboardType: TextInputType.text,
//             //   decoration: InputDecoration(
//             //       hintText: 'เบอร์โทรศัพท์*',
//             //       border: OutlineInputBorder(
//             //           borderSide: BorderSide(color: Colors.grey, width: 32.0),
//             //           borderRadius: BorderRadius.circular(5.0)
//             //       ),
//             //       focusedBorder: OutlineInputBorder(
//             //           borderSide: BorderSide(color: Colors.grey, width: 1.0),
//             //           borderRadius: BorderRadius.circular(5.0)
//             //       )
//             //   ),
//             //   onChanged: (value) {
//             //     //Do something with this value
//             //   },
//             // ),

//              Padding(
//                   padding: const EdgeInsets.only(left: 10.0),
//                   child: Text(
//                     "เลือกตำบล",
//                     style: TextStyle(
//                         color: Colors.grey, fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 DirectSelect(
//                     itemExtent: 35.0,
//                     selectedIndex: selectedIndex1,
//                     child: MySelectionItem(
//                       isForList: false,
//                       title: elements1[selectedIndex1],
//                     ),
//                     onSelectedItemChanged: (index) {
//                       setState(() {
//                         selectedIndex1 = index;
//                       });
//                     },
//                     items: _buildItems1()),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0, top: 20.0),
//                   child: Text(
//                     "เลือกจังหวัด",
//                     style: TextStyle(
//                         color: Colors.grey, fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 DirectSelect(
//                     itemExtent: 35.0,
//                     selectedIndex: selectedIndex2,
//                     child: MySelectionItem(
//                       isForList: false,
//                       title: elements2[selectedIndex2],
//                     ),
//                     onSelectedItemChanged: (index) {
//                       setState(() {
//                         selectedIndex2 = index;
//                       });
//                     },
//                     items: _buildItems2()),
//                      SizedBox(height: 10.0),
//                          TextFormField(
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                   hintText: 'เบอร์โทรศัพท์*',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 32.0),
//                       borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                       borderRadius: BorderRadius.circular(5.0)
//                   )
//               ),
//               onChanged: (value) {
//                 //Do something with this value
//               },
//             ),
//                               SizedBox(height: size.height * 0.03),
//                               RoundedButton(
//                                 text: "ลงทะเบียน",
//                                 // color: kPrimaryLightColor,
//                                 // textColor: Colors.black,
//                                 press: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) {
//                                         // return ScreeningScreen();
//                                         return DescriptionPages();
//                                       },
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                       ));
//                     }
                  
//                     void setState(Null Function() param0) {}
// }
// class MySelectionItem extends StatelessWidget {
//   final String title;
//   final bool isForList;

//   const MySelectionItem({Key key, this.title, this.isForList = true})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 60.0,
//       child: isForList
//           ? Padding(
//               child: _buildItem(context),
//               padding: EdgeInsets.all(10.0),
//             )
//           : Card(
//               margin: EdgeInsets.symmetric(horizontal: 10.0),
//               child: Stack(
//                 children: <Widget>[
//                   _buildItem(context),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Icon(Icons.arrow_drop_down),
//                   )
//                 ],
//               ),
//             ),
//     );
//   }

//   _buildItem(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       alignment: Alignment.center,
//       child: Text(title),
//     );
//   }
// }

