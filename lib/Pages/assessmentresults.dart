import 'package:flutter/material.dart';


import 'package:flutter/cupertino.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: AssessmentresultsPage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class AssessmentresultsPage extends StatefulWidget {
  AssessmentresultsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AssessmentresultsPageState createState() => _AssessmentresultsPageState();
}

class _AssessmentresultsPageState extends State<AssessmentresultsPage> {
 
  @override
  Widget build(BuildContext context) {
       return new MaterialApp(
       debugShowCheckedModeBanner: false,
                home: new Scaffold(
                  backgroundColor: Colors.lightBlue[100],
                  appBar: new AppBar(
                    elevation: 0.0,
                    centerTitle: true,
                    title: new Text('',
                        style: new TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                                actions: [
                      
                     IconButton(
                       icon: Image.asset('assets/icons/heart.png'),
                       onPressed: () { },
                     ),
            
                   ],
                     backgroundColor: Colors.indigo,
                     
                  ),
                  
                  body: new SingleChildScrollView(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    
                    child: new Center(
                      
                      child: new Form(
                        //key: _formKey,
                        child: new Center(
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Image(image: AssetImage('assets/icons/n&d.png'),  width: 250,),
                            
                            ],
                             ),
                    
                  new Card(
                    margin: new EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 4.0,
                    child: new Padding(
                      padding: new EdgeInsets.all(25.0),
                      child: new Column(
                        children: <Widget>[
              Container(
              margin: EdgeInsets.all(20),
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.orange, Colors.yellow, Colors.green],
                  begin: FractionalOffset.center,
                  end: FractionalOffset.bottomRight,
                ),
              ),
                        )
                        ],
                      ),
                    ),
                  ),
                   Container(
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text('ทำแบบประเมินตนเองอีกครั้ง',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20.5),),
                onPressed: () {
              
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
            ), 
                ],
                
              ),
              
            ),
          ),
          
        ),
      ),
    ),
       );
  }
}
