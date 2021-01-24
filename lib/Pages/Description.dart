
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:ifightcovid19/Pages/assessment.dart';
import 'package:ifightcovid19/Screens/Screeningresults/screeningresults_screen.dart';
// import 'package:ifightcovid19/Screens/Screeningresults/screeningresults_screen.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:ifightcovid19/Screens/Screening/screening_screen.dart';
 
// ignore: must_be_immutable
class DescriptionPages extends StatelessWidget {

   bool checked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("คัดกรอง COVID-19"),
      ),

       body: new SingleChildScrollView(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    
                    child: new Center(
                      
                      child: new Form(
                        //key: _formKey,
                        child: new Center(
                          
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                                 SizedBox(height: 20.0),
                                Text('แบบคัดกรองโควิด 19 (COVID-19)',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                
                    
                  new Card(
                    color: Colors.green[200],
                    margin: new EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 8.0, bottom: 5.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 4.0,
                    child: new Padding(
                      padding: new EdgeInsets.all(25.0),
                      child: new Column(
                        children: <Widget>[
                            Text('คำอธิบายแบบคัดกรอง',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),

                   Text('ท่านสามารถทำแบบคัดกรองผู้ป่วย COVID-19 คัดกรองผ่าน Ifightcovid19 App หากท่านไม่มีความประสงค์จะเข้ารับการคัดกรอง กรุณาปิดแล้วออกจากหน้านี้',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
    SizedBox(height: 20.0),
      Text('กรุณาเลือกเพียงหนึ่งคำตอบจากตัวเลือกที่ปรากฏ',style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),),
       Row(children: [
          HStack([
                    Checkbox(
                      value: checked, onChanged: (bool value) { checked=value ;},
                    ),
                    "".text.make().py16()
                  ]),
	
         SizedBox(width: 10.0),
         ]),
         
         Text('ข้าพเจ้ารับทราบคำอธิบายแบบคัดกรองและต้องการเข้ารับการคัดกรองCOVID-19',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                  ),
                


              
              SizedBox(height: 20.0),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      MaterialButton(
                       color: Colors.indigo,
                       child: Text('ยอมรับ', style: TextStyle(color: Colors.white)),
                       onPressed: () { 
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ScreeningresultsScreen();
                          },
                        ),
                      ); //แอดไปยังหน้า ประเมินผู้ป่วย
                        //Do Something
                       },
                     ),
                 ]),
        
                ],
                
              ),
              
            ),
          ),
          
        ),
      ),
  );
        }
      
        void setState(Null Function() param0) {}
}
 
 
//  child: Stack(
// Positioned(
//               bottom: 40,
//               left: MediaQuery.of(context).size.width * .05,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     alignment: Alignment.center,
//                     width: MediaQuery.of(context).size.width * .9,
//                     child: Row(
//                       children: [
//                         Container(
//                           child: Row(children: [
//                             // for (int i = 0; i < _totalPages; i++) i == _currentPage ? _buildPageIndicator(true) : _buildPageIndicator(false)
//                           ]),
//                         ),
//                         // Spacer(),
//                         // if (_currentPage != 2)
//                           InkWell(
//                             onTap: () {
//                               // _ onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ChatbotPage(
//                                         )));
//                           },
                            
                            
//                             child: Container(
//                               height: Platform.isIOS ? 70 : 60,
//                               alignment: Alignment.center,
//                               child: Text(
//                                 'Skip',
//                                 style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
//                               ),
//                             ),
//                           ),
//                         // if (_currentPage == 2)
//                           InkWell(
//                             onTap: () => print('Get Started Now'),
//                             child: Container(
//                               height: Platform.isIOS ? 70 : 60,
//                               alignment: Alignment.center,
//                               child: Text(
//                                 'Start',
//                                 style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             )