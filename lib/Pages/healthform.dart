import 'package:flutter/material.dart';
import 'package:ifightcovid19/Pages/chatbot.dart';

class HealthformPages extends StatefulWidget {
  HealthformPages({Key key}) : super(key: key);

  @override
  HealthformPagesState createState() => new HealthformPagesState();
}

class HealthformPagesState extends State<HealthformPages>
    with TickerProviderStateMixin {
  AnimationController _controller;

  int _radioValue;
  int _radioValue2;

  TextEditingController control_1 = new TextEditingController();

  @override
  initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    )..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) _controller.reverse();
      });
    super.initState();
  }

  void _handleRadioValue(int value) {
    // Don't animate the first time that the radio value is set
    if (_radioValue != null) _controller.forward();
    setState(() {
      _radioValue = value;
    });
  }

  void _handleRadioValue2(int value) {
    // Don't animate the first time that the radio value is set
    if (_radioValue2 != null) _controller.forward();
    setState(() {
      _radioValue2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(""),
            actions: [
              // action button
              IconButton(
                icon: Image.asset('assets/icons/heart.png'),
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.indigo,
          ),
          body: new Container(
              //อยากขยับไปฝั่งซ้ายจัง ค่อยคิด
              padding: EdgeInsets.only(bottom: 20.0),

              // child: new Card(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: SafeArea(
                  child: new Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      new Text(
                        ' แบบบันทึกสุขภาพก่อนรับการคัดกรอง',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      //  -------------------------------------------------------------------------------------------------------------------------------------------------

                      new Text(
                        'มีโรคประจำตัวหรือไม่ ',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Radio<int>(
                              value: 1,
                              groupValue: _radioValue,
                              onChanged: _handleRadioValue),
                          new Text(
                            'มี',
                            style: new TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                      new Row(
                        children: [
                          new Radio<int>(
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValue,
                          ),
                          new Text(
                            ' ไม่มี',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),

                      new Padding(
                        padding: new EdgeInsets.all(4.0),
                      ),

                      new Text(
                        'ประวัติการเจ็บป่วยในปัจจุบัน',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Radio<int>(
                            value: 0,
                            groupValue: _radioValue2,
                            onChanged: (val) => ({
                              _handleRadioValue2(val),
                              control_1.text = "โรคเบาหวาน"
                            }),
                          ),
                          new Text(
                            'โรคเบาหวาน',
                            style: new TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                      new Row(
                        children: [
                          new Radio<int>(
                            value: 1,
                            groupValue: _radioValue2,
                            onChanged: (val) => ({
                              _handleRadioValue2(val),
                              control_1.text = "โรคความดันโลหิตสูง"
                            }),
                          ),
                          new Text(
                            'โรคความดันโลหิตสูง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Radio<int>(
                            value: 2,
                            groupValue: _radioValue2,
                            onChanged: (val) => ({
                              _handleRadioValue2(val),
                              control_1.text = "โรคไขมันในเลือดสูง"
                            }),
                          ),
                          new Text(
                            ' โรคไขมันในเลือดสูง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Radio<int>(
                            value: 3,
                            groupValue: _radioValue2,
                            onChanged: _handleRadioValue2,
                          ),
                          new Text(
                            'โรคอ้วน',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Radio<int>(
                            value: 4,
                            groupValue: _radioValue2,
                            onChanged: (val) => ({
                              _handleRadioValue2(val),
                              control_1.text = "โรคมะเร็ง"
                            }),
                          ),
                          new Text(
                            'โรคมะเร็ง',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),

                      new Row(
                        children: [
                          new Radio<int>(
                            value: 5,
                            groupValue: _radioValue2,
                            onChanged: (val) =>
                                ({_handleRadioValue2(val), control_1.clear()}),
                          ),
                          new Text(
                            'อื่น ๆ',
                            style: new TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        enabled: _radioValue2 == 5,
                        decoration: InputDecoration(
                            hintText: 'กรูณาระบุ',
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 32.0),
                                borderRadius: BorderRadius.circular(5.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0))),
                        controller: control_1,
                      ),

                      new Row(
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatbotPage()));
                            },
                            child: Text("บันทึก"),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatbotPage()));
                            },
                            child: Text("ข้าม"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
