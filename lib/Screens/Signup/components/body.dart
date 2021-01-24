// import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Screens/Information/information_screen.dart';
// import 'package:ifightcovid19/model/Login.dart';
// import 'package:ifightcovid19/service/ItemsService.dart';
// import 'package:ifightcovid19/service/LoingService.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:ifightcovid19/components/rounded_button.dart';



// class Body extends StatefulWidget {
//   Body({Key key}) : super(key: key);

//   @override
//   BodyPageState createState() => new BodyPageState();
// }

// class BodyPageState extends State<Body> with TickerProviderStateMixin {
//   AnimationController _controller;
//   Login formData = new Login();
//   var loginService = new LoginService();
//   final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
//   // ignore: unused_field
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//   // ignore: unused_field
//   final TextEditingController _controllerText = new TextEditingController();
//     // ignore: unused_field
//   final TextEditingController _user = new TextEditingController();
//     // ignore: unused_field
//   TextEditingController _password = new TextEditingController();


  
//   @override
//   initState() {
//     _controller = new AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 100),
//     )..addStatusListener((AnimationStatus status) {
//         if (status == AnimationStatus.completed) _controller.reverse();
//       });
//     ItemsService.getItems();
//     super.initState();
//   }


//   // ignore: missing_return
//   Future<Login> _submitForm() async {
//     final FormState form = _formKey.currentState;
//     if (!form.validate()) {
     
//       // showMessage('Form is not valid!  Please review and correct.');
//     } else {
//       form.save(); //This invokes each onSaved event
//       print('Form save called, newContact is now up to date...');
//       print('user: ${formData.user}');
//       print('password: ${formData.password}');
//       print('========================================');
//       print('Submitting to back end...');
//       print('TODO - we will write the submission part next...');

//       return loginService.createLogin(formData);
         
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     // 
//     bool checked = true;
//       bool _obscureText = true;
//     // ignore: unused_local_variable
//     String _password;
//   // ignore: unused_element
//   void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//     // Size size = MediaQuery.of(context).size;
//  return Scaffold(
       
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
//           body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: new Form(
//                 key: _formKey,
//                 // ignore: deprecated_member_use
//                 autovalidate: false,
      
//           //       // autovalidate: false,
//           // padding: EdgeInsets.all(10.0),
//         child: Column(
          
//           mainAxisAlignment: MainAxisAlignment.center,
//           key: _formKey,
          
//           children: <Widget>[
            
              
//                SizedBox(height: 20.0),
//                TextFormField(
              
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
                
//                   hintText: 'ชื่อผู้ใช้งาน*',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 32.0),
//                       // borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.grey, width: 1.0),
//                       // borderRadius: BorderRadius.circular(2.0)
//                   )
//               ),
//                controller: _user,
//                         onSaved: (val) => formData.user = val,
//             ),
//              SizedBox(height: 10.0),
//             TextFormField(
//               keyboardType: TextInputType.text,
//               decoration: const InputDecoration(
//                   labelText: 'Password',
//                   icon: const Padding(
//                       padding: const EdgeInsets.only(top: 15.0),
//                       child: const Icon(Icons.lock))),
//               validator: (val) => val.length < 6 ? 'Password too short.' : null,
//               onSaved: (val) => _password = val,
//               obscureText: _obscureText,
//             ),
            
//             // new FlatButton(
//             //     onPressed: _toggle,
//             //     child: new Text(_obscureText ? "Show" : "Hide")),
          
//             HStack([
//                     Checkbox(
//                       value: checked, onChanged: (bool value) { checked=value ;},
//                     ),
//                     "".text.make().py16()
//                   ]),
           
      
//                                              Text(
//                                                'จำชื่อผู้ใช้งาน',
//                                                 // style: kLabelStyle,
//                                              ),
                               
//                                               SizedBox(height: 10.0),
//                                                 RoundedButton(
//                                                   text: "เข้าใช้งาน",
//                                                   // color: kPrimaryLightColor,
//                                                   // textColor: Colors.black,
//                                                   press: () {
//                                                     Navigator.push(
//                                                       context,
//                                                       MaterialPageRoute(
//                                                         builder: (context) {
//                                                           // return ScreeningScreen();
//                                                           return InformationScreen();
//                                                         },
//                                                       ),
//                                                     );
//                                                     _submitForm();
//                                                   },
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         )
                  
                      
//                         );
//                                     }
                                  
//                                     // void setState(Null Function() param0) {}
//                   }
                  
//                   void setState(Null Function() param0) {
// }
          

import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Pages/Description.dart';
import 'package:ifightcovid19/Screens/Information/information_screen.dart';
import 'package:ifightcovid19/model/Login.dart';
import 'package:ifightcovid19/service/ItemsService.dart';
// import 'package:ifightcovid19/model/RegisterParent.dart';
import 'package:ifightcovid19/service/LoingService.dart';
// import 'package:ifightcovid19/service/RegisterService.dart';
import 'package:ifightcovid19/constants.dart';
// import '../../Welcome/main-user.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  BodyPageState createState() => new BodyPageState();
}

class BodyPageState extends State<Body> with TickerProviderStateMixin {
  AnimationController _controller;
  bool _isHidden = true;
  Login formData = new Login();
  var loginService = new LoginService();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  // ignore: unused_field
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // ignore: unused_field
  final TextEditingController _controllerText = new TextEditingController();
  final TextEditingController _user = new TextEditingController();
  final TextEditingController _password = new TextEditingController();


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

  // ignore: missing_return
  Future<Login> _submitForm() async {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      // showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event
      print('Form save called, newContact is now up to date...');
      print('user: ${formData.user}');
      print('password: ${formData.password}');
   
      print('========================================');
      print('Submitting to back end...');
      print('TODO - we will write the submission part next...');
      return loginService.createLogin(formData);
    }
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
             padding: EdgeInsets.all(10.0),
            child: new Form(
                key: _formKey,
                // ignore: deprecated_member_use
                autovalidate: false,
                
                child: Column(
                  
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: <Widget>[
                      SizedBox(height: 39.0),
                      TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: 'username*',
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 32.0),
                                borderRadius: BorderRadius.circular(5.0)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0)
                              )),
                          controller: _user,
                          onSaved: (val) => formData.user = val),
                      SizedBox(height: 10.0),
                      TextFormField(
                        keyboardType: TextInputType.text,
                         obscureText: _isHidden,
                         
                       
                        decoration: InputDecoration(
                            suffix: InkWell(
                onTap: _togglePasswordView,
                child: Icon(
                        _isHidden 
                        ? Icons.visibility 
                        : Icons.visibility_off,
                    ),
                ),
                          prefixIcon: Icon(Icons.lock),
                            hintText: 'password*',
                            
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 32.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(.0))),
                                validator: (val) => val.length < 6 ? 'Password too short.' : null,
            // obscureText: _obscureText,
                        controller: _password,
                        onSaved: (val) => formData.password = val,
                      ),
                      
                      SizedBox(height: 10.0),
                      new Container(
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: kPrimaryColor,
                          onPressed: () {
                            {
                              _submitForm().then((value) => {
                                    if (value == null)   // == 2ตัวคือ ให้มันเข้า เงื่อนไขแรก   !=  ให้มันเข้า เงื่อนไขสอง
                                      {
                                        showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                            title:
                                                Text("คุณได้เข้าสู่ระบบสำเร็จ"),
                                            content: Text(
                                                "กรุณากด ตกลง เพื่อเข้าใช้งาน"),
                                            actions: <Widget>[
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        //return ScreeningScreen();
                                                        return InformationScreen();
                                                      },
                                                    ),
                                                  );
                                                },
                                                child: Text("ตกลง"),
                                              ),
                                            ],
                                          ),
                                        )
                                      }
                                      
                                    else 
                                      {
                                        showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                            title:
                                                Text("คุณลงทะเบียนไม่สำเร็จ "),
                                            content: Text(
                                                "กรุณากรอกข้อมุลให้ครบถ้วน"),
                                            actions: <Widget>[
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        //return ScreeningScreen();
                                                        return InformationScreen();
                                                      },
                                                    ),
                                                  );
                                                  // WelcomeScreen
                                                },
                                                child: Text("okay"),
                                              ),
                                            ],
                                          ),
                                        )
                                      }
                                  });
                            }
                          },
                          child: Text(
                            "เข้าใช้งาน",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ]))));
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}