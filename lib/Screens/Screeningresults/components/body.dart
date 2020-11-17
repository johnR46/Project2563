import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/assessmentresults.dart';
import 'package:ifightcovid19/Pages/chatbot.dart';
import 'package:ifightcovid19/Pages/form14day.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
import 'package:ifightcovid19/Screens/Screening/components/background.dart';
import 'package:ifightcovid19/Screens/Screeningresults/screeningresults_screen.dart'; //ต้องอิมพอร์มมาหน้าตัวเอง
import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
import 'package:ifightcovid19/components/rounded_input_field.dart';
import 'package:flutter_svg/svg.dart';


class BodyPage extends StatefulWidget {
  BodyPage();

  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
   AssessmentresultsPage(),
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
            title: Text('ข้อมูล'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text('แชท'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add),
            title: Text('บันทึกฟอร์ม'),
          )
        ],
      ),
    );
  }
}



  
  

  