import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifightcovid19/Pages/chatbot.dart';
import 'package:ifightcovid19/Pages/healthform.dart';
import 'package:ifightcovid19/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
        child: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // SizedBox(height: size.height * 0.05),
            Text(
              "ยินดีต้อนรับ ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/doctor.svg",
              height: size.height * 0.20,
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
                Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/chat.png'),
                        fit: BoxFit.fill),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatbotPage()));
                    },
                    child: Column(
                      children: <Widget>[
                        Text(
                          "ห้องสนทนา",
                          style: TextStyle(
                              fontFamily: 'AirbnbCerealBold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/from2.jpg'),
                        fit: BoxFit.fill),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HealthformPages()));
                    },
                    child: Column(
                      children: <Widget>[
                        Text(
                          "กรอกประวัติสุขภาพ",
                          style: TextStyle(
                              fontFamily: 'AirbnbCerealBold',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )),
            ]),
          ]),
    ));
  }
}
