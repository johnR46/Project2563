import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifightcovid19/Pages/Description.dart';
import 'package:ifightcovid19/Pages/chatbot.dart';
import 'package:ifightcovid19/Pages/healthform.dart';
import 'package:ifightcovid19/Screens/Login/login_screen.dart';
import 'package:ifightcovid19/Screens/Signup/signup_screen.dart';
import 'package:ifightcovid19/Screens/Welcome/components/background.dart';
import 'package:ifightcovid19/components/rounded_button.dart';

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
             Text('ยินดีต้อนรับเข้าสู่ ifightcovid19 App',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
            // SizedBox(height: size.height * 0.05),
             Text(
               "กรุณาเข้าสู่ระบบ",
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

      Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/COVID .jpeg'),
                        fit: BoxFit.fill),

                  ),
                 child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DescriptionPages(
                                        )));
                          },
                            child: Column(
                    children: <Widget>[
                      Text(
                        "คัดกรอง COVID-19",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealBold',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            ),
                      ),
                    ],
                  ),
                 )
                ),
                
                   SizedBox(height: size.height * 0.05),
                 
                Container(
                  width: 150,
                  height: 100,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icons/chat.png'),
                        fit: BoxFit.fill
                        
                        ),
                    
                        
                        
                  ),
                  
                  child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatbotPage(
                                        )));
                          },
                  child: Column(
                    children: <Widget>[
                      Text(
                        "ห้องสนทนา",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealBold',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            ),
                      ),
                      
                      
                      
                     
                    ],
                  ),
                  
                ),
                
  )],
        ),
        SizedBox(height: 10.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                                    builder: (context) => HealthformPages(
                                        )));
                          },
                            child: Column(
                    children: <Widget>[
                      Text(
                        "กรอกประวัติสุขภาพ",
                        style: TextStyle(
                            fontFamily: 'AirbnbCerealBold',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                            ),
                        
                      ),
                    ],
                  ),
                 )
                ),


            ]),


        SizedBox(height: 25.0),
        RoundedButton(
              text: "สำหรับผู้ป่วย",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
               RoundedButton(
               text: "สำหรับแพทย์/พยาบาล",
               press: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) {
                       return SignUpScreen();
                     },
                   ),
                 );
               },
             ),
           ] ),
    ));
  }
}
