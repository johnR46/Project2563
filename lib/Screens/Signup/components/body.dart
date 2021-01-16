import 'package:flutter/material.dart';
import 'package:ifightcovid19/Screens/Information/information_screen.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:ifightcovid19/Screens/Signup/components/background.dart';
// import 'package:ifightcovid19/components/already_have_an_account_acheck.dart';
import 'package:ifightcovid19/components/rounded_button.dart';
// import 'package:ifightcovid19/components/rounded_input_field.dart';
// import 'package:ifightcovid19/components/rounded_password_field.dart';


class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // 
    bool checked = true;
    // Size size = MediaQuery.of(context).size;
 return Scaffold(
       
         backgroundColor: Color(0xFFFAFAFA),
         
         appBar: AppBar(
           title: Text(""),
            actions: [
          //action button
         IconButton(
           icon: Image.asset('assets/icons/heart.png'),
           onPressed: () { },
         ),

       ],
         backgroundColor: Colors.indigo,
         ),
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10.0),
        
        
          // child: new Card(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text('ลงทะเบียนเข้าใช้งาน',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            // Text(
            //   "ลงทะเบียนเข้าใช้งาน",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            //  //ตัวเข้ม style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)
            // ),
          
            //  SizedBox(height: 10.0),
            //  Text('เข้าใช้งาน',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
               SizedBox(height: 20.0),
               TextFormField(
              
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                
                  hintText: 'ชื่อผู้ใช้งาน*',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      // borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      // borderRadius: BorderRadius.circular(2.0)
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
                  hintText: 'รหัสผ่านเข้าใช้งาน*',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(.0)
                  )
              ),
              onChanged: (value) {
                //Do something with this value
              },
            ),
            HStack([
                    Checkbox(
                      value: checked, onChanged: (bool value) { checked=value ;},
                    ),
                    "".text.make().py16()
                  ]),
            //   Theme(
            //  data: ThemeData(unselectedWidgetColor: Colors.pink),
            //  child: Checkbox(
            //    value: _rememberMe,
            //    checkColor: Colors.green,
            //    activeColor: Colors.white,
            //    onChanged: (value) {
            //       setState(() {
            //                                           _rememberMe = value;
            //                                         });
            //                                      },
            //                                    ),
            //                                  ),
                                             Text(
                                               'จำชื่อผู้ใช้งาน',
                                                // style: kLabelStyle,
                                             ),
                               
                                              SizedBox(height: 10.0),
                                                RoundedButton(
                                                  text: "เข้าใช้งาน",
                                                  // color: kPrimaryLightColor,
                                                  // textColor: Colors.black,
                                                  press: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) {
                                                          // return ScreeningScreen();
                                                          return InformationScreen();
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                  
                        // body: SingleChildScrollView(
                        //     child: new Card(
                        //      //color: Colors.green[300],
                        //      color: Colors.green[300],
                        //      shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(12.0),
                        //     ),
                              
                        //   child: Column(
                        //      crossAxisAlignment: CrossAxisAlignment.center,
                            
                            
                        //     children: <Widget>[
                  
                        //        Text(
                        //     'ชื่อผู้ใช้ ',
                        //     //  style: kLabelStyle,
                        //    ),
                        //   SizedBox(height: 10.0),
                        //   Container(
                        //     alignment: Alignment.centerLeft,
                        //     // decoration: kBoxDecorationStyle,
                        //     height: 60.0,
                        //     child: TextField(
                        //       keyboardType: TextInputType.emailAddress,
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontFamily: 'OpenSans',
                        //       ),
                        //       decoration: InputDecoration(
                        //         border: InputBorder.none,
                        //         contentPadding: EdgeInsets.only(top: 14.0),
                        //         prefixIcon: Icon(
                        //           Icons.people,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Enter your User',
                        //         // hintStyle: kHintTextStyle,
                        //       ),
                        //     ),
                        //   ),
                        //    SizedBox(height: 10.0),
                        //    Text(
                        //     'รหัสผู้ใช้งาน ',
                        //     // style: kLabelStyle,
                        //   ),
                        //   SizedBox(height: 10.0),
                        //   Container(
                        //     alignment: Alignment.centerLeft,
                        //     // decoration: kBoxDecorationStyle,
                        //     height: 60.0,
                        //     child: TextField(
                        //       obscureText: true,
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontFamily: 'OpenSans',
                        //       ),
                        //       decoration: InputDecoration(
                        //         border: InputBorder.none,
                        //         contentPadding: EdgeInsets.only(top: 14.0),
                        //         prefixIcon: Icon(
                        //           Icons.lock,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Enter your Password',
                        //         // hintStyle: kHintTextStyle,
                        //       ),
                        //     ),
                        //   ),
                        //   Theme(
                        //       data: ThemeData(unselectedWidgetColor: Colors.pink),
                        //       child: Checkbox(
                        //         value: _rememberMe,
                        //         checkColor: Colors.green,
                        //         activeColor: Colors.white,
                        //         onChanged: (value) {
                        //           // setState(() {
                        //           //                   _rememberMe = value;
                        //           //                 });
                        //                         },
                        //                       ),
                        //                     ),
                        //                     Text(
                        //                       'จำชื่อผู้ใช้งาน',
                        //                       // style: kLabelStyle,
                        //                     ),
                        //                        SizedBox(height: 10.0),
                        //                         RoundedButton(
                        //                           text: "ลงทะเบียน",
                        //                           // color: kPrimaryLightColor,
                        //                           // textColor: Colors.black,
                        //                           press: () {
                        //                             Navigator.push(
                        //                               context,
                        //                               MaterialPageRoute(
                        //                                 builder: (context) {
                        //                                   // return ScreeningScreen();
                        //                                   return InformationScreen();
                        //                                 },
                        //                               ),
                        //                             );
                        //                           },
                        //                         ),
                        //                 ],
                                  
                                        
                        //               )))
                        );
                                    }
                                  
                                    // void setState(Null Function() param0) {}
                  }
                  
                  void setState(Null Function() param0) {
}
            // Text(  "",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            // new TextFormField(
            //     keyboardType: TextInputType.emailAddress, // Use email input type for emails.
            //     decoration: new InputDecoration(
            //       hintText: 'Username',
            //       labelText: 'Enter your username'
            //     ),
            //   ),
            //   new TextFormField(
            //     obscureText: true, // Use secure text for passwords.
            //     decoration: new InputDecoration(
            //       hintText: 'Password',
            //       labelText: 'Enter your password'
            //     ),
            
            //   ),
            
            // SizedBox(height: size.height * 0.03),
            // SizedBox(height: size.height * 0.03),
            // RoundedButton(
            //   text: "ลงทะเบียน",
            //   // color: kPrimaryLightColor,
            //   // textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return InformationScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
           
//           ],
//         ),
//       ),
      
//     ));
//   }
// }


////////////////////////////////////////////////////
///