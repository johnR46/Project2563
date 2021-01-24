import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Pages/assessmentresult.dart';
// import 'package:ifightcovid19/Pages/result.dart';
import 'package:ifightcovid19/Pages/chatbot.dart';
import 'package:ifightcovid19/Pages/form14day.dart';
import 'package:ifightcovid19/Pages/assessment.dart';
// import 'package:ifightcovid19/Pages/result.dart';
// import 'package:ifightcovid19/result.dart';
class BodyPage extends StatefulWidget {
  BodyPage();

  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
     AssessmentPage(),
     ChatbotPage(),
     Form14dayPage()
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
              icon: Icon(Icons.chat_bubble),
              // ignore: deprecated_member_use
              title: Text('แชท'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_add),
              // ignore: deprecated_member_use
              title: Text('บันทึกฟอร์ม'),
            )
          ],
        ),
      );
    }
  }
  
  // ignore: non_constant_identifier_names
//   AssessmentresultPage() {
// }



  
  

  