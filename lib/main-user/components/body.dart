import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifightcovid19/Screens/RegisterUser/register-user.dart';
import 'package:ifightcovid19/Screens/Welcome/components/background.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
import 'package:ifightcovid19/main-user/sign-in-user/main-login.dart';

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
              "กรุณาเข้าสู่ระบบ หรือ ลงทะเบียน",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/doctor.svg",
              height: size.height * 0.20,
            ),

            SizedBox(height: 25.0),
            RoundedButton(
              text: "Sign in",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainPage();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SignUp",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterUser();
                    },
                  ),
                );
              },
            ),
          ]),
    ));
  }
}
