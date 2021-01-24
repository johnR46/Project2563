
import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/addform.dart';
import 'package:ifightcovid19/Pages/patientgraph.dart';
import 'package:ifightcovid19/Pages/patientinformation.dart';
import 'package:ifightcovid19/Pages/patientmap.dart';
// import 'package:ifightcovid19/components/rounded_button.dart';

// import 'package:ifightcovid19/Screens/Screening/components/background.dart';
// import 'package:ifightcovid19/Screens/Information/information_screen.dart';
// import 'package:ifightcovid19/Screens/Signup/signup_screen.dart';
// import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
// import 'package:ifightcovid19/components/rounded_button.dart';
// import 'package:ifightcovid19/components/rounded_input_field.dart';
// import 'package:ifightcovid19/components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
// import 'package:flutter_auth/Screens/Screeningresults/screeningresults_screen.dart';//import หน้าที่จะไป

class BodyPage extends StatefulWidget {
  BodyPage();

  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
   PatientinformationPage(),
   PatientgraphPage(),
   PatientmapPage(),
   AddformPage()
   

    // SignInPage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
             // ignore: deprecated_member_use
            title: Text('ข้อมูล'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
             // ignore: deprecated_member_use
            title: Text('กราฟ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
             // ignore: deprecated_member_use
            title: Text('สถานะผู้ป่วย'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_align_justify),
            // ignore: deprecated_member_use
            title: Text('เพิ่มแบบฟอร์ม'),
          )

          
        ],
         backgroundColor: Color(0xff26A69A),
         selectedItemColor: Colors.indigo,
         unselectedItemColor: Colors.black,
        
      ),

    );
  }
}

// class BodyPage extends StatefulWidget {
//   BodyPage({Key key}) : super(key: key);
//   @override
  
//   BodyPageState createState() => new BodyPageState();
// }
// class BodyPageState extends State<BodyPage> 
  
// with TickerProviderStateMixin {
//   int _selectedIndex = 0;
//   final _widgetOptions = [
//     Text('Index 0: Home'),
//     Text('Index 1: Business'),
//     Text('Index 2: School'),
//     Text('Index 2: School'),
    
//   ];
//   AnimationController _controller;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;// 
    
//     ThemeData theme = Theme.of(context);
//     return new Scaffold(
//       backgroundColor: Colors.lightBlue[100],
//       appBar: AppBar(
//         title: Text('หน้าข้อมูลผู้ป่วย'),
//         actions: [
//         // action button
//         IconButton(
//           icon: Image.asset('assets/icons/heart.png'),
//           onPressed: () { },
//         ),
//       ],
//         backgroundColor: Colors.indigo,
//        ),
//        body: Center(
               
//         child: _widgetOptions.elementAt(_selectedIndex),
        
//       ),
      
//       bottomNavigationBar: BottomNavigationBar(
        
//         items: <BottomNavigationBarItem>[
          
//           BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('ข้อมูล')),
//           BottomNavigationBarItem(icon: Icon(Icons.graphic_eq), title: Text('แชท')),
//           BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('สถานะ')),
//           BottomNavigationBarItem(icon: Icon(Icons.format_align_justify), title: Text('เพิ่มแบบฟอร์ม')),
//         ],
//         currentIndex: _selectedIndex,
//         backgroundColor: Color(0xff26A69A),
//         selectedItemColor: Colors.indigo,
//         unselectedItemColor: Colors.black,
//         // fixedColor: Colors.deepPurple,
//         onTap: _onItemTapped,
//       ),
//     );
    
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   }