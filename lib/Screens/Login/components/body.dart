import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/Description.dart';
import 'package:ifightcovid19/service/ItemsService.dart';
import 'package:ifightcovid19/model/RegisterParent.dart';
import 'package:ifightcovid19/service/RegisterService.dart';
import 'package:ifightcovid19/constants.dart';
import '../../Welcome/welcome_screen.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  BodyPageState createState() => new BodyPageState();
}

class BodyPageState extends State<Body> with TickerProviderStateMixin {
  AnimationController _controller;
  RegisterParent formData = new RegisterParent();
  var registerService = new RegisterService();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  // ignore: unused_field
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // ignore: unused_field
  final TextEditingController _controllerText = new TextEditingController();
  final TextEditingController _firstNameAndLastName =
      new TextEditingController();
  final TextEditingController _personId = new TextEditingController();
  final TextEditingController _dateOfBirth = new TextEditingController();
  final TextEditingController _address = new TextEditingController();
  // final TextEditingController _district = new TextEditingController();
  final TextEditingController _phone = new TextEditingController();

  String _district = 'ตำบลคำขวาง';

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
    if (_district != null) _controller.forward();
    setState(() {
      _district = value;
      formData.district = value;
    });
  }

  Future<RegisterParent> _submitForm() async {
    final FormState form = _formKey.currentState;
    if (!form.validate()) {
      // showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event
      print('Form save called, newContact is now up to date...');
      print('firstName: ${formData.firstNameLastName}');
      print('personId: ${formData.personId}');
      print('dateOfBirth: ${formData.dateOfBirth}');
      print('address: ${formData.address}');
      print('district: ${formData.district}');
      print('Phone: ${formData.phone}');
      print('========================================');
      print('Submitting to back end...');
      print('TODO - we will write the submission part next...');
      return registerService.createRegisterParent(formData);
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
            child: new Form(
                key: _formKey,
                // ignore: deprecated_member_use
                autovalidate: false,
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
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 32.0),
                                //borderRadius: BorderRadius.circular(5.0)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                                //borderRadius: BorderRadius.circular(2.0)
                              )),
                          controller: _firstNameAndLastName,
                          onSaved: (val) => formData.firstNameLastName = val),
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
                        controller: _personId,
                        onSaved: (val) => formData.personId = val,
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
                        controller: _dateOfBirth,
                        onSaved: (val) => formData.dateOfBirth = val,
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
                        controller: _address,
                        onSaved: (val) => formData.address = val,
                      ),
                      SizedBox(height: 10.0),
                      new Container(
                        child: Text('เลือกตำบล'),
                      ),
                      new Container(
                          child: DropdownButton<String>(
                        value: _district,
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
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 32.0),
                                  borderRadius: BorderRadius.circular(5.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(5.0))),
                          controller: _phone,
                          onSaved: (val) => formData.phone = val),
                      SizedBox(height: 10.0),
                      new Container(
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: kPrimaryColor,
                          onPressed: () {
                            {
                              _submitForm().then((value) => {
                                    if (value != null)
                                      {
                                        showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                            title:
                                                Text("แจ้งเตือนการลงทะเบียน"),
                                            content: Text(
                                                "ลงทะเบียนสำเร็จ กรุณากด okay เพื่อเข้าใช้งาน"),
                                            actions: <Widget>[
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
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
                                                child: Text("okay"),
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
                                                Text("แจ้งเตือนการลงทะเบียน"),
                                            content: Text(
                                                "ลงทะเบียนไม่สำเร็จ กรุณาเช็คอินเตอร์เน็ตของท่าน"),
                                            actions: <Widget>[
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {
                                                        //return ScreeningScreen();
                                                        return WelcomeScreen();
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
                            "ลงทะเบียน",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ]))));
  }
}
