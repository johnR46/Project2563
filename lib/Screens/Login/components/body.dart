import 'package:flutter/material.dart';
// // import 'package:flutter_auth/Screens/Login/components/background.dart';
// import 'package:flutter_auth/Screens/Screening/screening_screen.dart';
// import 'package:ifightcovid19/Screens/Signup/signup_screen.dart';
// // import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
// import 'package:ifightcovid19/components/rounded_button.dart';
// // import 'package:ifightcovid19/components/rounded_input_field.dart';
// import 'package:ifightcovid19/components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:ifightcovid19/Screens/Login/components/background.dart';
import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
import 'package:ifightcovid19/components/rounded_input_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ลงทะเบียนเข้าใช้งาน",
              style: TextStyle(fontWeight: FontWeight.bold),
             //ตัวเข้ม style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)
            ),
            // SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "ชื่อ-นามสกุล",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "หมายเลขบัตรประชาชน",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "วัน/เดือน/ปี",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "ที่อยู่ตามทะเบียนบ้าน",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "เบอร์โทรศัพท์",
              onChanged: (value) {},
            ),
            // RoundedPasswordField(
            // onChanged: (value) {},
            // //  ),
            // RoundedButton(
            //   text: "ตกลง",
            //   press: () {},
            // ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScreeningScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
